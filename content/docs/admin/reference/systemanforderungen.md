---
title: "Systemanforderungen"
description: "Mindestanforderungen an Server, Datenbank, Anmeldung und Netzwerk für den Betrieb von sitrep."
weight: 5
---
Diese Seite listet auf, was Sie für den Betrieb von sitrep brauchen. Die Einrichtung selbst beschreibt [Installation und Einrichtung]({{< relref "/docs/admin/how-to/setup-with-local-postgres" >}}).

## Server

| Anforderung | Angabe |
|---|---|
| Betriebssystem | Fedora, RHEL, Rocky Linux, AlmaLinux (RPM) oder Debian, Ubuntu (DEB), jeweils mit systemd |
| Prozessor-Architektur | `amd64` oder `arm64` |
| Container | Docker, Podman oder eine andere OCI-konforme Container-Laufzeit, nur nötig, wenn Sie sitrep als Container starten. Ohne Container installieren Sie die Linux-Pakete (APT oder RPM). Das Image läuft auch auf einem Raspberry Pi |
| CPU | 2 Kerne für sitrep selbst |
| Arbeitsspeicher | 512 MB für sitrep selbst |
| Festplatte | 30 GB |

Die Werte für CPU und Arbeitsspeicher gelten nur für den sitrep-Prozess. Datenbank, Reverse-Proxy und OIDC-Anbieter kommen dazu, wenn sie auf demselben Server laufen.

Die Pakete stammen von [packages.sitrep.ch](https://packages.sitrep.ch). Das Container-Image liegt unter `ghcr.io/f-eld-ch/sitrep`.

## Datenbank

| Datenbank | Einsatz | Anforderung |
|---|---|---|
| SQLite | Ausprobieren und kleine Instanzen | keine zusätzliche Software |
| PostgreSQL | Produktiv, empfohlen für grössere Instanzen | Version 16 oder neuer |

Mit SQLite liegen Dateianhänge im Dateisystem (`filesystem`). Mit PostgreSQL können sie auch in der Datenbank liegen (`database`).

## Anmeldung

sitrep braucht einen **OpenID-Connect-Anbieter** (OIDC). Sie benötigen Issuer-URL, Client-ID, Client-Secret und die Rücksprungadresse. Ohne OIDC startet sitrep nur mit `insecure-local-auth`, und das ist ausschliesslich zum Ausprobieren gedacht.

### Scopes

sitrep fordert beim OIDC-Anbieter diese Scopes an. Der Client muss sie freigeben:

| Scope | Wofür sitrep ihn braucht |
|---|---|
| `openid` | Anmeldung über OpenID Connect |
| `profile` | Name (`name`) und Benutzername (`preferred_username`) |
| `email` | E-Mail-Adresse (`email`) |
| `offline_access` | Refresh-Token, damit sitrep die Sitzung erneuern kann, ohne dass Sie sich erneut anmelden |

Zusätzlich verwendet sitrep die Benutzerkennung (`sub`) und, falls vorhanden, die Sitzungs-ID (`sid`) aus dem ID-Token. Die Scopes sind fest eingebaut und nicht konfigurierbar.

## Netzwerk

- sitrep lauscht standardmässig auf Port `4180`. Mit eigenem TLS oder ACME ist es typischerweise Port 443.
- Üblich ist ein Reverse-Proxy, der HTTPS beendet.
- Ausgehende Verbindungen braucht sitrep zum OIDC-Anbieter, bei ACME zum Zertifikatsanbieter und für die Telemetrie zu `telemetry.sitrep.ch`. Die Telemetrie lässt sich abschalten.

Die Optionen stehen unter [Konfigurationsoptionen]({{< relref "/docs/admin/reference/konfiguration" >}}).

## Dateianhänge

Eine Datei darf höchstens 25 MiB gross sein. Planen Sie den Speicherplatz für die Anhänge zusätzlich zur Datenbank ein.

## Browser

sitrep läuft in der aktuellen Version von Chrome oder in Browsern auf Chromium-Basis, zum Beispiel Edge oder Brave. Halten Sie den Browser auf dem aktuellen Stand.
