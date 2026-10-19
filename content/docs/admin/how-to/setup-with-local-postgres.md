---
title: "Installation und Einrichtung mit lokaler PostgreSQL-Datenbank"
description: "sitrep aus den offiziellen Paketen installieren, eine lokale PostgreSQL-Datenbank einrichten und den systemd-Dienst starten."
weight: 10
---
Diese Anleitung führt Systemadministratorinnen und -administratoren durch die Installation von sitrep auf **Fedora / RHEL** oder **Debian / Ubuntu** mit den offiziellen Paketquellen von [packages.sitrep.ch](https://packages.sitrep.ch). Sie richtet eine lokale PostgreSQL-Datenbank ein, konfiguriert sitrep und startet den systemd-Dienst.

---

## 1. Paketinstallation

sitrep stellt offizielle APT- und RPM-Pakete bereit, die mit dem GPG-Schlüssel mit dem Fingerabdruck `5082 9DB2 FE3D 96B9 F544 7FA2 3B5D 817E F801 41FA` signiert sind.

### Fedora / RHEL / Rocky Linux / AlmaLinux (RPM)

1. Offizielle sitrep-RPM-Paketquelle hinzufügen:
   ```bash
   sudo dnf config-manager addrepo --from-repofile=https://packages.sitrep.ch/rpm/sitrep.repo
   ```

2. Das Paket `sitrep` installieren:
   ```bash
   sudo dnf install sitrep
   ```

*(Optional)* Für den Testing-/Vorabversions-Kanal:
```bash
sudo dnf config-manager addrepo --from-repofile=https://packages.sitrep.ch/rpm/sitrep-testing.repo
```

---

### Debian / Ubuntu (DEB)

1. GPG-Signaturschlüssel importieren:
   ```bash
   curl -fsSL https://packages.sitrep.ch/sitrep-signing.asc \
     | sudo gpg --dearmor -o /usr/share/keyrings/sitrep.gpg
   ```

2. Paketquelle hinzufügen und das Paket `sitrep` installieren:
   ```bash
   sudo curl -fsSL https://packages.sitrep.ch/deb/sitrep.sources \
     -o /etc/apt/sources.list.d/sitrep.sources
   sudo apt-get update
   sudo apt-get install sitrep
   ```

*(Optional)* Für den Testing-/Vorabversions-Kanal:
```bash
sudo curl -fsSL https://packages.sitrep.ch/deb/sitrep-testing.sources \
  -o /etc/apt/sources.list.d/sitrep-testing.sources
sudo apt-get update
```

---

## 2. Lokale PostgreSQL-Datenbank einrichten

sitrep speichert Ereignisströme und Read-Model-Projektionen in einer Datenbank. Standardmässig genügt dafür eine SQLite-Datei, ganz ohne zusätzliche Software. Für grössere Instanzen empfehlen wir PostgreSQL. Dieser Abschnitt zeigt die Einrichtung.

### PostgreSQL-Server installieren und starten

#### Auf Fedora / RHEL / Rocky / AlmaLinux:
```bash
sudo dnf install postgresql-server postgresql-contrib
sudo postgresql-setup --initdb
sudo systemctl enable --now postgresql
```

#### Auf Debian / Ubuntu:
```bash
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib
sudo systemctl enable --now postgresql
```

---

### Datenbank und Rolle anlegen

Legen Sie einen eigenen Datenbankbenutzer `sitrep` und eine Datenbank `sitrep` an:

1. Datenbankrolle anlegen:
   ```bash
   sudo -u postgres createuser sitrep
   ```

2. Datenbank anlegen, die `sitrep` gehört:
   ```bash
   sudo -u postgres createdb --owner=sitrep sitrep
   ```

---

## 3. Konfiguration

Das Paket legt eine Standard-Konfigurationsdatei unter `/etc/sitrep/config.yaml` ab (die vollständige Referenz finden Sie in [packaging/config.yaml](https://github.com/f-eld-ch/sitrep/blob/HEAD/packaging/config.yaml)).

### Datenbankverbindung konfigurieren

Ersetzen Sie in `/etc/sitrep/config.yaml` den Eintrag `database-url` (standardmässig eine SQLite-Datei) durch:

```yaml
database-url: "postgres://sitrep@/sitrep?host=/var/run/postgresql"
```

> **Hinweis zu Unix-Sockets und Peer-/Ident-Authentifizierung**:
> Diese Einrichtung verbindet sich über den lokalen Unix-Domain-Socket von PostgreSQL (`/var/run/postgresql`) und verwendet die native **`peer`-/`ident`-Authentifizierung** von PostgreSQL (`local`-Regeln in `pg_hba.conf`).
>
> Bei der Verbindung über den Unix-Socket als Rolle `sitrep` prüft PostgreSQL die Identität des verbindenden Betriebssystem-Prozesses direkt gegen die Datenbankrolle. Dadurch müssen weder Passwörter noch Zugangsdaten im Klartext in `/etc/sitrep/config.yaml` stehen.

### Weitere wichtige Einstellungen

1. **Schlüssel für Sitzungs-Cookies**: Erzeugen Sie einen geheimen 32-Byte-Schlüssel, mit dem die Sitzungs-Cookies signiert werden:
   ```bash
   openssl rand -base64 32
   ```
   Tragen Sie das Ergebnis in `/etc/sitrep/config.yaml` ein:
   ```yaml
   cookie-key: "YOUR_GENERATED_SECRET_KEY"
   ```

2. **OIDC-Authentifizierung (Produktion)**: Konfigurieren Sie die Angaben Ihres OpenID-Connect-Anbieters:
   ```yaml
   oidc-issuer: "https://id.example.org"
   oidc-client-id: "sitrep"
   oidc-client-secret: "YOUR_OIDC_CLIENT_SECRET"
   oidc-redirect-url: "https://sitrep.example.org/oauth2/callback"
   ```

---

## 4. Dienstverwaltung

Das Paket `sitrep` installiert einen gehärteten systemd-Dienst ([packaging/sitrep.service](https://github.com/f-eld-ch/sitrep/blob/HEAD/packaging/sitrep.service)).

### Automatische Migrationen

Die systemd-Unit enthält einen `ExecStartPre`-Schritt, der vor dem Start des Serverprozesses automatisch `sitrep migrate up` ausführt. Schemamigrationen werden dadurch bei jeder Installation und jedem Update des Pakets nahtlos angewendet.

### systemd-Befehle

- **Dienst aktivieren und starten**:
  ```bash
  sudo systemctl enable --now sitrep
  ```

- **Dienststatus prüfen**:
  ```bash
  sudo systemctl status sitrep
  ```

- **Anwendungs-Logs anzeigen**:
  ```bash
  sudo journalctl -u sitrep -f
  ```

- **Nach Konfigurationsänderungen neu starten**:
  ```bash
  sudo systemctl restart sitrep
  ```
