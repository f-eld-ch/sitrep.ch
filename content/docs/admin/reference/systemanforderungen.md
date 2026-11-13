---
title: "Systemanforderungen"
description: "Mindestanforderungen an Server, Datenbank, Identity Provider und Netzwerk für den Betrieb von sitrep."
weight: 5
---
Diese Seite listet auf, was Sie für den Betrieb von sitrep brauchen. Die Einrichtung selbst beschreibt [Installation und Einrichtung]({{< relref "/docs/admin/how-to/setup-with-local-postgres" >}}).

## Server

| Anforderung | Angabe |
|---|---|
| Betriebssystem | Fedora, RHEL, Rocky Linux, AlmaLinux (RPM) oder Debian, Ubuntu (DEB), jeweils mit systemd |
| Prozessor-Architektur | `amd64` oder `arm64` |
| Container | Docker, Podman oder eine andere OCI-konforme Container-Laufzeit, nur nötig, wenn Sie sitrep als Container starten. Ohne Container installieren Sie die Linux-Pakete (APT oder RPM). |
| CPU | 2 Kerne für sitrep selbst |
| Arbeitsspeicher | 512 MB für sitrep selbst |
| Festplatte | 30 GB |

Die Werte für CPU und Arbeitsspeicher gelten nur für den sitrep-Prozess. Datenbank, Reverse-Proxy und Identity Provider kommen dazu, wenn sie auf demselben Server laufen.

Die Pakete stammen von [packages.sitrep.ch](https://packages.sitrep.ch). Das Container-Image liegt unter `ghcr.io/f-eld-ch/sitrep`.

## Datenbank

| Datenbank | Einsatz | Anforderung |
|---|---|---|
| SQLite | Ausprobieren und kleine Instanzen | keine zusätzliche Software |
| PostgreSQL | Produktiv, empfohlen für grössere Instanzen | Version 16 oder neuer |

## Identity Provider

sitrep braucht einen **Identity Provider** mit OpenID Connect (OIDC). Sie benötigen Issuer-URL, Client-ID, Client-Secret und die Rücksprungadresse. Ohne OIDC startet sitrep nur mit `insecure-local-auth`, und das ist ausschliesslich zum Ausprobieren gedacht.

### Scopes

sitrep fordert beim Identity Provider diese Scopes an. Der Client muss sie freigeben:

| Scope | Wofür sitrep ihn braucht |
|---|---|
| `openid` | Anmeldung über OpenID Connect |
| `profile` | Name (`name`) und Benutzername (`preferred_username`) |
| `email` | E-Mail-Adresse (`email`) |
| `offline_access` | Refresh-Token, damit sitrep die Sitzung erneuern kann, ohne dass Sie sich erneut anmelden |

Zusätzlich verwendet sitrep die Benutzerkennung (`sub`) und, falls vorhanden, die Sitzungs-ID (`sid`) aus dem ID-Token. Die Scopes sind fest eingebaut und nicht konfigurierbar.

### Flows

| Anforderung | Angabe |
|---|---|
| Flow | Authorization Code Flow mit oder ohne PKCE |
| Client-Typ | vertraulich (mit Client-Secret), sitrep ist eine Webanwendung mit Server |
| Token erneuern | Refresh-Token-Grant (braucht den Scope `offline_access`) |
| Discovery | sitrep liest die Einstellungen des Identity Providers von dessen Discovery-Dokument (`/.well-known/openid-configuration` unter der Issuer-URL) |
| Rücksprungadresse | `https://<ihr-host>/oauth2/callback` |

Der Implicit Flow, der Client-Credentials-Flow und der Device Flow werden nicht unterstützt.

## Netzwerk

| Richtung | Gegenstelle | Port | Zweck | Erforderlich |
|---|---|---|---|---|
| Eingehend | Browser der Benutzer | TCP 443 (HTTPS) | Zugriff auf sitrep | Ja |
| Ausgehend | Identity Provider | TCP 443 (HTTPS) | Anmeldung | Ja |
| Ausgehend | PostgreSQL-Server | TCP 5432 (PostgreSQL-Standard) | Datenbank | Nur bei externer PostgreSQL-Datenbank |
| Ausgehend | `vectortiles.geo.admin.ch` | TCP 443 (HTTPS) | Vektorkacheln der Karte laden, lokal ausliefern und regelmässig im Hintergrund aktualisieren | Ja |
| Ausgehend | `packages.sitrep.ch` | TCP 443 (HTTPS) | Linux-Pakete (APT oder RPM) installieren und aktualisieren | Bei Installation mit Paketen |
| Ausgehend | `ghcr.io` | TCP 443 (HTTPS) | Container-Image herunterladen | Bei Installation als Container |
| Ausgehend | Zertifikatsanbieter (Let's Encrypt) | TCP 443 (HTTPS) | Zertifikate per ACME | Optional |
| Ausgehend | `telemetry.sitrep.ch` oder eigener OpenTelemetry-Endpunkt | TCP 443 (HTTPS) | OpenTelemetry-Daten senden. Abschaltbar oder an einen eigenen OpenTelemetry-Endpunkt umleitbar | Optional |

Die Optionen stehen unter [Konfigurationsoptionen]({{< relref "/docs/admin/reference/konfiguration" >}}).

## Dateianhänge

Eine Datei darf höchstens 25 MiB gross sein. Planen Sie den Speicherplatz für die Anhänge zusätzlich zur Datenbank ein.

## Browser

sitrep läuft in der aktuellen Version von Chrome oder in Browsern auf Chromium-Basis, zum Beispiel Edge oder Brave. Halten Sie den Browser auf dem aktuellen Stand.
