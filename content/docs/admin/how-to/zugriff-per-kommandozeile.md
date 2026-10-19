---
title: "Zugriff per Kommandozeile verwalten (Notfallzugang)"
description: "Mit der sitrep-Kommandozeile den ersten Systemadministrator festlegen oder den Zugang wiederherstellen."
weight: 20
---
Die Zugriffssteuerung nutzen Sie normalerweise in sitrep selbst. Die Kommandozeile `sitrep access` brauchen Sie nur, wenn das nicht möglich ist: bei der Einrichtung, um den ersten Systemadministrator festzulegen, oder im Notfall, wenn niemand mehr Systemadministrator ist. Die Befehle ändern die Datenbank direkt und umgehen die Oberfläche. Sie laufen auf dem Server, auf dem sitrep installiert ist.

Gruppen und alle anderen Rollen verwalten Sie in sitrep, nicht mit der Kommandozeile. Für Gruppen gibt es keine Befehle.

## Voraussetzungen

- Zugang zum Server oder Container, auf dem sitrep läuft.
- Die Datenbankverbindung. Die Befehle lesen sie wie der Dienst aus der Konfiguration. Sie können sie auch mit `--database-url` angeben (PostgreSQL oder `sqlite:///pfad.db`) oder die Konfigurationsdatei mit `--config` wählen.

## Neue Installation

Auf einer neuen Installation ohne Benutzer erhält die erste Person, die sich anmeldet, automatisch die Rolle Systemadministrator. Sie müssen nichts einstellen. Melden Sie sich deshalb als Erstes mit dem Konto an, das administrieren soll.

## Benutzer und ihre Kennung finden

Die Befehle brauchen die OIDC-Kennung (`sub`) eines Benutzers. Eine Person erscheint dort erst, nachdem sie sich einmal angemeldet hat.

```bash
sitrep access users list
sitrep access users search --email name@example.org
sitrep access users search --name Muster
```

Mit `--format json` erhalten Sie die Ausgabe als JSON.

## Einen Systemadministrator festlegen

Auf einer bestehenden Installation, oder wenn niemand mehr Systemadministrator ist:

```bash
sitrep access grant-system-admin --sub <sub>
```

Der Benutzer kann danach in sitrep weitere Rollen vergeben.

## Systemadministratoren anzeigen

```bash
sitrep access list-system-admins
```

Die Ausgabe enthält die Kennungen aller Systemadministratoren, sortiert.

## Einen Systemadministrator entziehen

```bash
sitrep access revoke-system-admin --sub <sub>
```

## Den Besitzer eines Ereignisses festlegen

Wenn ein Ereignis keinen Besitzer mehr hat, der es verwalten kann:

```bash
sitrep access grant-incident-owner --incident <id> --sub <sub>
```

Der Benutzer muss sich vorher einmal angemeldet haben, sonst meldet der Befehl, dass die Kennung nicht vorhanden ist. Die Ereignis-ID steht in der Adresse des Ereignisses (`/incident/<id>/…`).
