---
title: "Mittelübersicht und Mitteltabelle"
description: "Spalten, Status, Pflichtangaben und Zählregeln der Mittelübersicht."
weight: 20
---
Die Mittelübersicht zeigt alle Einsatzmittel des Ereignisses. Die Daten entstehen in der Triage im Schritt **Mittel**. Anleitung: [Mittel aufbieten und einsetzen]({{< relref "/docs/user/how-to/triage/mittel-aufbieten-und-einsetzen" >}}).

Öffnen Sie die Übersicht über **Mittel** in der Navigation des Ereignisses.

<!-- Screenshot: mitteltabelle-gruppiert.webp – Mitteltabelle nach Formation gruppiert, mit verschiedenen Status -->

## Aufbau

Die Mittel sind nach Formation und darunter nach Formations- oder Ortsbezeichnung gruppiert (zum Beispiel Feuerwehr, darunter Altdorf). Mittel aus untergeordneten Ereignissen erscheinen als eigene Gruppe. Jede Gruppe zeigt die Zahl der eingesetzten Personen.

## Spalten der Tabelle

| Spalte | Inhalt |
|---|---|
| Mittel | Formation, Ortsbezeichnung und Name |
| Personen | Anzahl Personen |
| Status | Aufgeboten, Einsatzbereit, Eingesetzt oder Abgelöst |
| Erreichbarkeit | Funk, Telefon, E-Mail oder andere, mit Angabe (zum Beispiel Kanal oder Nummer) |
| Aufgeboten | Zeit der Meldung, mit der das Mittel aufgeboten wurde |
| Einsatzbereit | Zeit der Meldung, mit der es einsatzbereit gemeldet wurde |
| Im Einsatz | Beginn des Einsatzes |
| Beendet / Abgelöst | Ende des Einsatzes |
| Hauptaufgabe | Auftrag |
| Einsatzort | Ort des Einsatzes |

Alle Zeiten sind die **Zeiten der Meldungen**, nicht der Zeitpunkt, an dem jemand die Triage abschloss. Ein abgelöstes Mittel zeigt in der Zeile «Abgelöst durch» das Nachfolgemittel.

## Status

| Status | Bedeutung | Mögliche Aktionen |
|---|---|---|
| Aufgeboten | Das Mittel ist alarmiert, aber noch nicht da | Einsatzbereit melden |
| Einsatzbereit | Das Mittel ist eingetroffen oder bereit | Einsetzen, Entlassen |
| Eingesetzt | Das Mittel arbeitet an einem Auftrag | Einsatz abgeschlossen, Ablösen, Entlassen |
| Abgelöst | Der Einsatz des Mittels ist beendet | Reaktivieren |

Übergänge:

- Aufgeboten → Einsatzbereit → Eingesetzt
- Eingesetzt → Einsatzbereit (**Einsatz abgeschlossen**)
- Einsatzbereit oder Eingesetzt → Abgelöst (**Ablösen** oder **Entlassen**)
- Abgelöst → Aufgeboten (**Reaktivieren**). Die Einsatzgeschichte bleibt erhalten, Auftrag, Einsatzort und Ablösung des vorherigen Einsatzes werden zurückgesetzt.

Frühere Einsätze eines Mittels bleiben als zusätzliche Zeilen sichtbar.

## Angaben beim Aufbieten

| Feld | Pflicht | Hinweis |
|---|---|---|
| Verband (Formation) | ja | Feuerwehr, Polizei, Armee, Zivilschutz, Technische Betriebe, Sanität, Andere |
| Formations- oder Ortsbezeichnung | ja | zum Beispiel «Altdorf» |
| Name des Mittels | ja | zum Beispiel «Zug 1» |
| Personen | ja, mindestens 1 | |

Formation, Ortsbezeichnung und Name bilden zusammen die Identität des Mittels. Ein aktives Mittel mit derselben Identität kann nicht ein zweites Mal aufgeboten werden. Gibt es ein abgelöstes Mittel mit derselben Identität, bietet sitrep an, dieses zu reaktivieren.

### Grösse

sitrep schlägt die Grösse anhand der Personenzahl vor:

| Grösse | Personen |
|---|---|
| Trupp | 1–5 |
| Gruppe | 6–19 |
| Zug | 20–60 |
| Kompanie | 61–300 |
| Bataillon | ab 301 |

## Pflichtangaben für den Einsatz

Ein Mittel lässt sich nur einsetzen, wenn **Hauptaufgabe** und **Einsatzort** ausgefüllt sind. So zeigt die Tabelle nie ein Mittel im Einsatz ohne Auftrag.

## Zählregeln

In den Zahlen der Gruppen zählen **nur Mittel mit dem Status Eingesetzt**. Aufgebotene und einsatzbereite Mittel werden separat als Statusmarken ausgewiesen. Begründung: [Personen- und Mittelzählung]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}}).

## Drucken

Die Schaltfläche **Drucken** erzeugt die Tabelle für Rapport oder Lagewand. Siehe [Mitteltabelle drucken]({{< relref "/docs/user/how-to/triage/mitteltabelle-drucken" >}}).
