---
title: "Mit Helm auf Kubernetes betreiben"
description: "sitrep mit dem Helm-Chart auf Kubernetes installieren, mit PostgreSQL, Autoscaling oder SQLite."
weight: 30
---
Das Helm-Chart von sitrep wird als OCI-Artefakt veröffentlicht. Das Chart hat eine eigene Version (SemVer, zum Beispiel `1.2.0`), unabhängig von der Version der Anwendung (CalVer, zum Beispiel `v26.11.1`). Die Chart-Quellen liegen im [Verzeichnis `helm/`](https://github.com/f-eld-ch/sitrep/tree/develop/helm) des Produkt-Repositorys.

```bash
helm install sitrep oci://ghcr.io/f-eld-ch/charts/sitrep --version <chart-version> -f values.yaml
```

Wie Sie das Chart auf seine Echtheit prüfen, beschreibt [Releases überprüfen]({{< relref "/docs/admin/how-to/releases-pruefen" >}}).

## Mit PostgreSQL (empfohlen, unterstützt Autoscaling)

Legen Sie ein Secret an (zum Beispiel mit External Secrets oder Sealed Secrets) mit den Schlüsseln `database-url`, `oidc-client-secret` und `cookie-key`. Danach:

```yaml
secrets:
  existingSecret: sitrep
oidc:
  clientId: sitrep
  issuer: https://idp.example.com
  redirectUrl: https://sitrep.example.com/oauth2/callback
ingress:
  enabled: true
  hosts:
    - host: sitrep.example.com
      paths: [{ path: / }]
```

Die Datenbankmigrationen laufen als Hook-Job (`sitrep migrate up`) vor der Installation und vor jedem Upgrade (`pre-install`, `pre-upgrade`). ArgoCD führt ihn als PreSync-Hook aus. So konkurrieren mehrere Replikate nie um das Schema.

## SQLite (ein Replikat)

```yaml
database: { type: sqlite }
persistence: { enabled: true }
```

Das Chart verwendet dann ein `Recreate`-Rollout, ein PersistentVolumeClaim und `--migrate-on-startup`.

## Horizontale Skalierung (optional)

```yaml
autoscaling:
  enabled: true
  minReplicas: 2
  maxReplicas: 6
  targetCPUUtilizationPercentage: 70
```

Das Chart weigert sich zu rendern und nennt den Grund, wenn Autoscaling oder `replicaCount > 1` kombiniert wird mit:

- SQLite,
- einem fehlenden `cookie-key` (sonst würde jeder Pod Sitzungen mit einem eigenen Zufallsschlüssel signieren),
- dem Anhangs-Backend `filesystem`,
- einem fehlenden `resources.requests.cpu`.

Bei aktiviertem Autoscaling lässt das Chart `spec.replicas` im Deployment weg, damit ArgoCD nicht gegen den HPA arbeitet.

## Betrieb

**Bereitschaft und Lebendigkeit.** `/health` (Liveness) greift nie auf die Datenbank zu, ein Datenbankausfall startet also keine Pods neu. `/ready` (Readiness) prüft PostgreSQL und schlägt beim Herunterfahren fehl. Ein Pod, der die Datenbank nicht erreicht, wird so aus dem Service genommen. Ein `preStop`-Sleep (`preStopSleepSeconds`, ab Kubernetes 1.34) gibt der Entfernung aus den Endpunkten Zeit, bevor der Server keine Verbindungen mehr annimmt.

**Secrets rotieren.** Das Chart sieht den Inhalt von `secrets.existingSecret` nicht, und die Pods lesen ihn nur beim Start. Ändern Sie nach einer Rotation `secrets.version` (ein beliebiger Text) in den Values, damit die Pods neu ausgerollt werden. Setzen Sie einen Controller für «Rollout bei Änderung» ein, tragen Sie stattdessen dessen Annotation über `podAnnotations` ein.

**Image festlegen.** `image.pullPolicy` wird automatisch gesetzt: `Always` für veränderliche Tags (`develop`, `stable`, `latest`, `pr-*`), `IfNotPresent` für Versions-Tags und Digests. Produktionsumgebungen sollten einen Versions-Tag oder `image.digest` festlegen. Bleibt `image.tag` leer, wird die `appVersion` des Charts eingesetzt.

**Netzwerk und Ingress.** `networkPolicy.enabled` beschränkt den eingehenden Verkehr auf `networkPolicy.ingressFrom`, den ausgehenden auf DNS und `networkPolicy.egress` (Datenbank, OIDC-Provider, Telemetrie). Anhänge dürfen bis 25 MB gross sein. Erhöhen Sie dafür die Grenze für die Request-Grösse im Ingress-Controller (ingress-nginx: `nginx.ingress.kubernetes.io/proxy-body-size: 30m`).

**Verteilung.** Mit mehr als einem Replikat werden die Pods weich auf die Nodes verteilt und mit `maxUnavailable: 0` aktualisiert. Ein PodDisruptionBudget hält bei einem Node-Drain einen Pod verfügbar.

## Siehe auch

- [Aktualisieren und zurückrollen]({{< relref "/docs/admin/how-to/aktualisieren-und-zurueckrollen" >}})
