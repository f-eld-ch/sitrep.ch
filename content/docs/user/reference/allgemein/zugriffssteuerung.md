---
title: "Zugriffssteuerung"
description: "Referenz: globale Rollen, Ereignisrollen, Zugriffsmodi und wer was darf."
weight: 10
---
Fakten zur Zugriffssteuerung von sitrep zum Nachschlagen. Die Überlegungen dahinter stehen im Hintergrundartikel [Wie die Zugriffssteuerung gedacht ist]({{< relref "/docs/user/explanation/allgemein/zugriffssteuerung" >}}). Konkrete Aufgaben beschreiben die Anleitungen [Globale Rollen verwalten]({{< relref "/docs/user/how-to/allgemein/globale-rollen" >}}) und [Gruppen verwalten]({{< relref "/docs/user/how-to/allgemein/gruppen" >}}).

## Wo finde ich was?

| Was | Wo |
|---|---|
| Globale Rollen | **Administration → Zugangskontrolle → Globale Rollen** |
| Gruppen | **Administration → Zugangskontrolle → Gruppen** |
| Standard-Zugang für neue Ereignisse | **Administration → Zugangskontrolle → Standard-Zugang** |
| Zugriff auf ein Ereignis | Seite **Ereigniszugriff** des Ereignisses, `/incident/<id>/access` |

## Globale Rollen

Globale Rollen gelten für die ganze sitrep-Installation.

| Rolle | Das kann sie |
|---|---|
| **Systemadministrator** | Gruppen und Gruppenmitglieder verwalten, alle globalen Rollen vergeben und entziehen (auch an andere Systemadministratoren) |
| **Gruppenadministrator** | Gruppen und Gruppenmitglieder verwalten. Kann keine Administratoren befördern oder zurückstufen |

- Der letzte Systemadministrator kann nicht entzogen werden.
- Auf einer neuen Installation ohne Benutzer erhält die erste Person, die sich anmeldet, die Rolle Systemadministrator.
- Auf einer bestehenden Installation, oder wenn niemand mehr Systemadministrator ist, vergibt der Betrieb die Rolle mit der Kommandozeile. Das beschreibt die Anleitung [Zugriff per Kommandozeile verwalten]({{< relref "/docs/admin/how-to/zugriff-per-kommandozeile" >}}).

## Ereignisrollen

| Rolle | Das kann sie |
|---|---|
| **Betrachter** | Das Ereignis lesen, Journal und Karte ansehen |
| **Bearbeiter** | Alles wie ein Betrachter, dazu Journaleinträge erfassen, die Karte bearbeiten und übergeordnete Ereignisse verknüpfen oder lösen |
| **Manager** | Alles wie ein Bearbeiter, dazu das Ereignis abschliessen und wieder öffnen und den Zugriff verwalten |
| **Besitzer** | Alles wie ein Manager, dazu das Ereignis **löschen** |

- Ein Principal (Benutzer, Gruppe oder «Alle Benutzer») hat pro Ereignis genau eine Rolle. Eine neue Rolle ersetzt die bisherige.
- Der letzte Besitzer eines Ereignisses kann nicht entzogen werden.

## Zugriffsmodi eines Ereignisses

| Modus | Wer auf das Ereignis zugreifen kann |
|---|---|
| **Offener Zugriff** | Jeder angemeldete sitrep-Benutzer kann das Ereignis ansehen, bearbeiten, abschliessen und den Zugriff verwalten. Nur das **Löschen** bleibt dem Besitzer vorbehalten. |
| **Eingeschränkt** | Nur Benutzer (oder Mitglieder von Gruppen) mit einer ausdrücklichen Berechtigung können das Ereignis ansehen oder bearbeiten. Die Rollenrechte gelten voll. |

Mit welchem Modus ein neues Ereignis erstellt wird, bestimmt der Standard-Zugangsmodus (siehe unten). Solange er nicht eingestellt ist, werden neue Ereignisse **eingeschränkt** erstellt.

## Standard-Zugang für neue Ereignisse

Unter **Administration → Zugangskontrolle → Standard-Zugang** («Standard-Zugangsmodus für Ereignisse») legen Sie fest, wie neue Ereignisse erstellt werden.

| Einstellung | Wirkung |
|---|---|
| **Standard-Zugangsmodus** | Neue Ereignisse werden mit diesem Zugangsmodus erstellt (**Offener Zugriff** oder **Eingeschränkt**). |
| **Standard-Rollenzuweisungen** | Diese Benutzer und Gruppen erhalten die angegebene Rolle auf jedem neuen Ereignis. |

- Nur ein Systemadministrator kann den Standard-Zugang ändern.
- Die Einstellung gilt für neue Ereignisse. Bestehende Ereignisse ändern sich nicht.

## Gruppen

| Zustand | Verhalten |
|---|---|
| **Aktiv** | Kann Rollen auf Ereignissen erhalten. Die Mitglieder erben die Rolle. |
| **Archiviert** | Schreibgeschützt. Kann keine neuen Berechtigungen auf Ereignissen erhalten. Bestehende Berechtigungen der Gruppe zählen bei Zugriffsentscheiden nicht mehr. |

Eine Gruppe kann nicht archiviert werden, solange Berechtigungen auf Ereignissen sie noch verwenden.

## Wer darf was?

Die Tabelle zeigt die Rechte bei **eingeschränkten** Ereignissen. Bei Ereignissen mit **offenem Zugriff** haben alle Benutzer faktisch die Rechte eines Managers, nur das Löschen bleibt immer dem Besitzer vorbehalten.

| Aktion | Betrachter | Bearbeiter | Manager | Besitzer | Gruppen­admin. | System­admin. |
|---|:---:|:---:|:---:|:---:|:---:|:---:|
| Ereignis und Journal ansehen | ✓ | ✓ | ✓ | ✓ | | |
| Journaleinträge erfassen und bearbeiten | | ✓ | ✓ | ✓ | | |
| Karte bearbeiten | | ✓ | ✓ | ✓ | | |
| Ereignis abschliessen und wieder öffnen | | | ✓ | ✓ | | |
| Zugriff auf das Ereignis verwalten | | | ✓ | ✓ | | |
| Teilereignisse verknüpfen und lösen | | ✓ | ✓ | ✓ | | |
| Ereignis löschen | | | | ✓ | | |
| Gruppen erstellen und archivieren | | | | | ✓ | ✓ |
| Gruppenmitglieder verwalten | | | | | ✓ | ✓ |
| Globale Rollen vergeben und entziehen | | | | | | ✓ |
| Standard-Zugang für neue Ereignisse ändern | | | | | | ✓ |
