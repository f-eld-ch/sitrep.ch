---
title: "Felder des Editors"
description: "Felder, Pflichtangaben und Regeln des Editors und des Meldezettels."
weight: 10
---
Im **Editor** erfassen Sie Meldungen. Anleitung: [Eine Meldung erfassen]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

![Der Editor mit Kommunikation, Empfänger, Anrufer, Zeit, Inhalt, Anhängen und der Vorschau](/images/docs/einsatzjournal/editor-telefon.webp)

## Felder je Kommunikationsart

| Kommunikation | Erstes Feld | Zweites Feld | Zusatzangabe |
|---|---|---|---|
| Telefon | Empfänger | Anrufer | je eine **Telefonnummer**, Pflicht |
| Funk | Empfänger | Absender | ein **Kanal** für beide |
| E-Mail | Email-Sender | Email-Empfänger | je eine **E-Mail-Adresse**, Pflicht |
| Andere | Absender | Empfänger | **Details**, freiwillig |

Beim Öffnen des Editors ist **Funk** gewählt.

## Pflichtangaben

Speichern lässt sich nur, wenn alle Pflichtfelder gefüllt sind:

- Absender (beziehungsweise Anrufer) und Empfänger
- Inhalt
- bei Telefon und E-Mail die Telefonnummer oder E-Mail-Adresse beider Seiten

Leerzeichen allein zählen nicht als Eingabe.

## Weitere Felder

| Feld | Inhalt |
|---|---|
| Zeit | Zeitpunkt, an dem die Meldung eintraf. Leer bedeutet: Zeit beim Speichern. |
| Inhalt | Text der Meldung, mit Markdown formatierbar. Die **Vorschau** zeigt das Ergebnis. |
| Anhänge | Dateien. Siehe [Einen Anhang hinzufügen]({{< relref "/docs/user/how-to/einsatzjournal/anhang-hinzufuegen" >}}). |

## Regeln für die Zeit

- Die Zeit darf höchstens fünf Minuten in der Zukunft liegen. Sonst meldet sitrep: «Die Nachrichtenzeit darf nicht mehr als fünf Minuten in der Zukunft liegen.»
- Nach der Triage lässt sich die Zeit nicht mehr ändern: «Die Zeit kann nicht mehr geändert werden, weil die Meldung bereits triagiert ist.»

## Angaben zu einer erfassten Meldung

| Angabe | Bedeutung |
|---|---|
| Meldungs-Number | Fortlaufende Nummer im Ereignis, wird beim Speichern vergeben |
| Erfasst am | Zeitpunkt des Speicherns. Er kann von der **Zeit** abweichen. |
| Priorität | normal oder wichtig. Wichtig sind Schlüsselnachrichten. |
| Triage Status | pendent, mehr Informationen benötigt, triagiert oder zurückgesetzt |
| Ressorts | Ressorts, die die Meldung erhalten, seit der Triage |

## Anhänge

| | |
|---|---|
| Erlaubt | Bilder (JPEG, PNG, GIF, WebP, TIFF), PDF, Text und CSV, Word, Excel, PowerPoint, ZIP |
| Grösse | höchstens 25 MB pro Datei, die Administration kann tiefer einstellen |
| Dateiname | höchstens 255 Zeichen |
| Nicht erlaubt | unter anderem SVG und HTML |
| Ein- und Ausschalten | Die Administration schaltet Anhänge ein. Siehe [Konfiguration]({{< relref "/docs/admin/reference/konfiguration" >}}). |

## Der Meldezettel

Der Meldezettel druckt eine Meldung mit diesen Angaben: Meldung, Absender, Empfänger, Zeit, Erfasst am, Meldungs-Number, Kommunikation (bei Funk mit Kanal), Triage Status, Priorität, Inhalt, Anhänge und Meldefluss. Siehe [Einen Meldezettel drucken]({{< relref "/docs/user/how-to/einsatzjournal/meldezettel-drucken" >}}).
