---
title: "sitrep mit Docker starten"
description: "sitrep in wenigen Minuten lokal mit Docker starten und ausprobieren."
weight: 10
---
Diese Anleitung startet sitrep lokal mit Docker, damit Sie es ausprobieren können. Sie braucht weder eine eigene Datenbank noch eine Anmeldung.

> **Nur zum Ausprobieren.** Die Anmeldung ist abgeschaltet, und alle Daten sind weg, sobald der Container beendet wird. Für den produktiven Betrieb siehe [Installation und Einrichtung]({{< relref "/docs/admin/how-to/setup-with-local-postgres" >}}).

Sie brauchen Docker (oder Podman). Das Image läuft auf Intel/AMD und ARM, also auch auf einem Raspberry Pi.

## 1. Image herunterladen

```bash
docker pull ghcr.io/f-eld-ch/sitrep:latest
```

`latest` ist das neueste stabile Release von sitrep.

## 2. sitrep starten

```bash
docker run --rm -p 4180:4180 \
  -e SITREP_DATABASE_URL=sqlite:///tmp/sitrep.sqlite \
  -e SITREP_INSECURE_LOCAL_AUTH=true \
  -e SITREP_MIGRATE_ON_STARTUP=true \
  -e SITREP_STORAGE_ATTACHMENTS_BACKEND=ephemeral \
  ghcr.io/f-eld-ch/sitrep:latest
```

Was die Angaben bewirken:

| Angabe | Wirkung |
|---|---|
| `--rm` | Der Container wird beim Beenden gelöscht. |
| `-p 4180:4180` | sitrep ist unter `http://localhost:4180` erreichbar. |
| `SITREP_DATABASE_URL` | Eine SQLite-Datei im Container dient als Datenbank, es ist keine zusätzliche Software nötig. |
| `SITREP_INSECURE_LOCAL_AUTH=true` | Schaltet die Anmeldung ab. Alle arbeiten als lokaler Benutzer. Nur für Tests. |
| `SITREP_MIGRATE_ON_STARTUP=true` | Legt beim Start die Datenbanktabellen an. |
| `SITREP_STORAGE_ATTACHMENTS_BACKEND=ephemeral` | Anhänge liegen im temporären Speicher des Containers. Ohne diese Angabe bricht der Start ab, weil das Standardverzeichnis im Container nicht beschreibbar ist. |

Sobald im Terminal `starting server` erscheint, läuft sitrep.

## 3. sitrep öffnen

Öffnen Sie <http://localhost:4180> im Browser. Mit **Create** legen Sie ein erstes Ereignis an. Die Sprache richtet sich nach Ihrem Browser.

Beenden Sie sitrep mit `Ctrl+C`. Der Container und alle Daten werden dabei gelöscht.
