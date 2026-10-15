---
title: "Konfigurationsoptionen"
description: "Alle Optionen von sitrep als Kommandozeilen-Flag, Umgebungsvariable und Konfigurationsdatei."
weight: 10
---
Alle Optionen von `sitrep serve` zum Nachschlagen. Jede Option lässt sich auf drei Arten setzen:

- als **Kommandozeilen-Flag**, zum Beispiel `--port 8080`,
- als **Umgebungsvariable**, zum Beispiel `SITREP_PORT=8080`,
- in der **Konfigurationsdatei**, zum Beispiel `port: 8080`.

Die Reihenfolge, wenn eine Option mehrfach gesetzt ist: **Flag vor Umgebungsvariable vor Konfigurationsdatei vor Standardwert**.

## Konfigurationsdatei

Die Datei ist YAML. Mit `--config <datei>` geben Sie sie an. Ohne `--config` liest sitrep eine Datei `config.yaml` im Arbeitsverzeichnis, falls es sie gibt. Das Paket installiert `/etc/sitrep/config.yaml` und der systemd-Dienst übergibt sie mit `--config`. Eine ausführlich kommentierte Vorlage ist [packaging/config.yaml](https://github.com/f-eld-ch/sitrep/blob/HEAD/packaging/config.yaml) im Quellcode.

- Die Schlüssel heissen wie die Flags und werden **mit Bindestrichen** geschrieben (`log-level`). Schlüssel mit Unterstrichen werden stillschweigend ignoriert.
- Die Optionen für Dateianhänge sind verschachtelt (`storage.attachments.…`, siehe unten).

## Umgebungsvariablen

Jede Option hat eine Umgebungsvariable `SITREP_<SCHLÜSSEL>`. Der Schlüssel wird gross geschrieben, Bindestriche und Punkte werden zu Unterstrichen. Aus `database-url` wird `SITREP_DATABASE_URL`, aus `storage.attachments.max-size` wird `SITREP_STORAGE_ATTACHMENTS_MAX_SIZE`.

Für ältere Installationen werden bei manchen Optionen weitere Namen akzeptiert (zum Beispiel `DATABASE_URL`). Sie stehen in der Tabelle unter «Weitere Namen». Verwenden Sie für neue Einrichtungen die `SITREP_…`-Namen.

Listen (`allowed-origins`, `acme-domains`) übergeben Sie als wiederholtes Flag, als kommagetrennten Wert in der Umgebungsvariable oder als YAML-Liste.

## Server

| Option | Umgebungsvariable | Standard | Beschreibung |
|---|---|---|---|
| `--port` | `SITREP_PORT` | `4180` | Port, auf dem sitrep lauscht. Bei HTTPS typischerweise 443, dann braucht die Binärdatei `CAP_NET_BIND_SERVICE`. Weitere Namen: `SITREP_SERVER_PORT`, `SERVER_PORT` |
| `--log-level` | `SITREP_LOG_LEVEL` | `info` | Protokollstufe: `debug`, `info`, `warn`, `error`. Weiterer Name: `LOG_LEVEL` |
| `--allowed-origins` | `SITREP_ALLOWED_ORIGINS` | leer | Erlaubte CORS-Ursprünge, zum Beispiel `https://sitrep.example.org`. Leer heisst: nur derselbe Ursprung. Weiterer Name: `ALLOWED_ORIGINS` |
| `--config` | – | – | Pfad zur Konfigurationsdatei. Nur als Flag, nicht in der Datei selbst |

## Datenbank

| Option | Umgebungsvariable | Standard | Beschreibung |
|---|---|---|---|
| `--database-url` | `SITREP_DATABASE_URL` | leer | Verbindung zur Datenbank, PostgreSQL oder SQLite. Beispiele: `sqlite:///var/lib/sitrep/sitrep.sqlite` oder `postgres://sitrep@/sitrep?host=/var/run/postgresql`. Weiterer Name: `DATABASE_URL`. Dieser Schalter gilt für `serve` ebenso wie für `migrate` und `access` |
| `--migrate-on-startup` | `SITREP_MIGRATE_ON_STARTUP` | `false` | Führt offene Datenbankmigrationen im Serverprozess aus. Das Paket erledigt das in einem eigenen Schritt vor dem Start (`sitrep migrate up`), dort bleibt die Option `false`. Weiterer Name: `MIGRATE_ON_STARTUP` |

## Anmeldung

| Option | Umgebungsvariable | Standard | Beschreibung |
|---|---|---|---|
| `--oidc-issuer` | `SITREP_OIDC_ISSUER` | leer | URL des OpenID-Connect-Anbieters. Weitere Namen: `OIDC_ISSUER`, `OAUTH2_PROXY_OIDC_ISSUER_URL` |
| `--oidc-client-id` | `SITREP_OIDC_CLIENT_ID` | leer | Client-ID. Weitere Namen: `OIDC_CLIENT_ID`, `OAUTH2_PROXY_CLIENT_ID` |
| `--oidc-client-secret` | `SITREP_OIDC_CLIENT_SECRET` | leer | Client-Secret. Weitere Namen: `OIDC_CLIENT_SECRET`, `OAUTH2_PROXY_CLIENT_SECRET` |
| `--oidc-redirect-url` | `SITREP_OIDC_REDIRECT_URL` | leer | Rücksprungadresse, zum Beispiel `https://sitrep.example.org/oauth2/callback`. Weitere Namen: `OIDC_REDIRECT_URL`, `OAUTH2_PROXY_REDIRECT_URL` |
| `--cookie-key` | `SITREP_COOKIE_KEY` | leer | Schlüssel zum Signieren der Sitzungs-Cookies. Erzeugen Sie ihn mit `openssl rand -base64 32`. Weitere Namen: `COOKIE_KEY`, `OIDC_COOKIE_KEY`, `OAUTH2_PROXY_COOKIE_SECRET` |
| `--insecure-local-auth` | `SITREP_INSECURE_LOCAL_AUTH` | `false` | Erlaubt Zugriff ohne Anmeldung als festen lokalen Benutzer. **Nur zum Ausprobieren, nie in Produktion.** Weiterer Name: `INSECURE_LOCAL_AUTH` |

Regeln:

- Wenn `oidc-client-id` gesetzt ist, müssen auch `oidc-issuer`, `oidc-client-secret` und `oidc-redirect-url` gesetzt sein, sonst startet sitrep nicht.
- Ist weder `oidc-client-id` noch `insecure-local-auth` gesetzt, startet sitrep nicht.

## Aufbewahrung

| Option | Umgebungsvariable | Standard | Beschreibung |
|---|---|---|---|
| `--auto-close-incidents` | `SITREP_AUTO_CLOSE_INCIDENTS` | `0` | Schliesst Ereignisse automatisch, die so viele Tage offen waren. `0` schaltet es aus |
| `--auto-archive-incidents` | `SITREP_AUTO_ARCHIVE_INCIDENTS` | `0` | Archiviert die Ereignisströme von Ereignissen, die vor so vielen Tagen abgeschlossen wurden. `0` schaltet es aus. Archivieren entfernt die laufenden Ereignisströme und löst einen Neuaufbau des Read-Models aus |

## Dateianhänge

In der Konfigurationsdatei sind diese Optionen verschachtelt:

```yaml
storage:
  attachments:
    enabled: true
    backend: filesystem
    max-size: 25mb
    filesystem:
      dir: "/var/lib/sitrep/attachments"
```

| Flag | Umgebungsvariable | Standard | Beschreibung |
|---|---|---|---|
| `--attachments-enabled` | `SITREP_STORAGE_ATTACHMENTS_ENABLED` | `true` | Dateianhänge an Meldungen erlauben. Schlüssel in der Datei: `storage.attachments.enabled` |
| `--attachments-backend` | `SITREP_STORAGE_ATTACHMENTS_BACKEND` | siehe unten | Wo die Dateien liegen: `database`, `filesystem` oder `ephemeral`. Schlüssel: `storage.attachments.backend` |
| `--attachments-max-size` | `SITREP_STORAGE_ATTACHMENTS_MAX_SIZE` | `25mb` | Maximale Grösse pro Datei, in Bytes oder mit Endung `kb`, `mb`, `gb`. Grösser als 25 MiB ist nicht möglich. Schlüssel: `storage.attachments.max-size` |
| `--attachments-dir` | `SITREP_STORAGE_ATTACHMENTS_FILESYSTEM_DIR` | `/var/lib/sitrep/attachments` | Verzeichnis für die Dateien beim Backend `filesystem`. Es muss existieren und für den sitrep-Prozess beschreibbar sein. Schlüssel: `storage.attachments.filesystem.dir` |

Die Speicherorte:

- **`database`:** Die Dateien liegen in der PostgreSQL-Datenbank. Mit SQLite ist das nicht möglich.
- **`filesystem`:** Die Dateien liegen auf der Festplatte. Das ist die übliche Wahl mit SQLite. Das Paket stellt es in `config.yaml` so ein.
- **`ephemeral`:** Die Dateien liegen in einem temporären Verzeichnis und sind nach einem Neustart weg.

Ohne Angabe nimmt sitrep `database`, wenn eine Datenbank-URL gesetzt ist, sonst `ephemeral`. Setzen Sie bei SQLite deshalb `filesystem` ausdrücklich.

## HTTPS (TLS)

Lassen Sie alle Optionen dieses Abschnitts leer, wenn sitrep hinter einem Reverse-Proxy läuft, der HTTPS beendet. Das ist der übliche Betrieb. Sie können entweder ein festes Zertifikat oder ACME verwenden.

| Option | Umgebungsvariable | Standard | Beschreibung |
|---|---|---|---|
| `--tls-cert` | `SITREP_TLS_CERT` | leer | Pfad zum PEM-Zertifikat. Aktiviert HTTPS zusammen mit `--tls-key`. Weiterer Name: `TLS_CERT` |
| `--tls-key` | `SITREP_TLS_KEY` | leer | Pfad zum privaten PEM-Schlüssel. Weiterer Name: `TLS_KEY` |
| `--acme-domains` | `SITREP_ACME_DOMAINS` | leer | Hostnamen, für die sitrep ein Zertifikat von Let's Encrypt holt. Schaltet ACME ein und verlangt `--port 443` |
| `--acme-email` | `SITREP_ACME_EMAIL` | leer | Kontaktadresse für Hinweise des Zertifikatsanbieters |
| `--acme-cache-dir` | `SITREP_ACME_CACHE_DIR` | `/var/lib/sitrep/acme` | Verzeichnis für Kontoschlüssel und Zertifikate. Es muss Neustarts überleben, sonst fordert jeder Start ein neues Zertifikat an und Sie erreichen die Grenzen des Anbieters |
| `--acme-directory-url` | `SITREP_ACME_DIRECTORY_URL` | leer | Adresse des ACME-Verzeichnisses. Leer heisst Let's Encrypt (Produktion). Zum Testen eignet sich `https://acme-staging-v02.api.letsencrypt.org/directory` |

Beim Paket liegen Zertifikat und Schlüssel als echte Dateien (keine Symlinks) in `/etc/sitrep/tls`. Der Dienst stellt sie im Dienstverzeichnis als `tls_cert.pem` und `tls_key.pem` bereit, entsprechend lauten die Werte `tls-cert: "tls_cert.pem"` und `tls-key: "tls_key.pem"`.

## Telemetrie

| Option | Umgebungsvariable | Standard | Beschreibung |
|---|---|---|---|
| `--telemetry-disabled` | `SITREP_TELEMETRY_DISABLED` | `false` | Schaltet den Export von OpenTelemetry-Daten aus. Weiterer Name: `OTEL_SDK_DISABLED` |

Der Endpunkt ist beim Bauen eingebaut (`https://telemetry.sitrep.ch`). Mit den Standardvariablen von OpenTelemetry lässt sich das Verhalten anpassen:

- `OTEL_EXPORTER_OTLP_ENDPOINT=""` überschreibt den eingebauten Endpunkt und schaltet den Export ohne Konfigurationsänderung aus.
- `OTEL_RESOURCE_ATTRIBUTES=deployment.environment.name=production` ändert den Namen der Umgebung, der mit jedem Signal mitgeschickt wird. Standard ist `self-hosted`.

## Entwicklung

| Option | Umgebungsvariable | Standard | Beschreibung |
|---|---|---|---|
| `--graphql-introspection` | `SITREP_GRAPHQL_INTROSPECTION` | `false` | Schaltet GraphQL-Introspektion und den Playground ein. In Produktion ausgeschaltet lassen. Weiterer Name: `GRAPHQL_INTROSPECTION` |
