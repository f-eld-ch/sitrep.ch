---
title: "Eine Meldung erfassen"
description: "Eine Meldung nach Kommunikationsart im Editor erfassen."
weight: 10
---
Erfassen Sie jede Meldung im **Editor**, sobald sie eintrifft. Eine geführte Einführung bietet das Tutorial [Ihre erste Meldung erfassen]({{< relref "/docs/user/tutorials/einsatzjournal/erste-meldung" >}}). Die Felder stehen in der Referenz [Felder des Editors]({{< relref "/docs/user/reference/einsatzjournal/editor-felder" >}}).

## Allgemeines Vorgehen

1. Öffnen Sie **Editor** im Einsatzjournal.
2. Wählen Sie die **Kommunikation**: Telefon, Funk, E-Mail oder Andere.
3. Füllen Sie Empfänger, Absender, Zeit und Inhalt aus (siehe unten, je nach Art).
4. Kontrollieren Sie die **Vorschau**.
5. Klicken Sie auf **speichern**.

Der Knopf **speichern** wirkt erst, wenn alle Pflichtfelder gefüllt sind. sitrep nummeriert die Meldung automatisch. Die Meldung erhält den Triage-Status **pendent**.

## Telefon

1. Tragen Sie den **Empfänger** und dessen Telefonnummer ein.
2. Tragen Sie den **Anrufer** und dessen Telefonnummer ein.

Beide Nummern sind Pflicht.

## Funk

1. Wählen Sie den **Kanal**. Er gilt für Empfänger und Absender.
2. Tragen Sie **Empfänger** und **Absender** ein.

Funk ist die Voreinstellung, wenn Sie den Editor öffnen.

## E-Mail

1. Tragen Sie den **Email-Sender** und seine E-Mail-Adresse ein.
2. Tragen Sie den **Email-Empfänger** und seine E-Mail-Adresse ein.

Beide Adressen sind Pflicht.

## Andere

Für Meldungen, die persönlich oder auf einem anderen Weg eintreffen, tragen Sie **Absender** und **Empfänger** ein. Unter **Details** können Sie ergänzen, wie die Meldung eintraf. Die Details sind freiwillig.

## Die Zeit setzen

- Lassen Sie die **Zeit** leer, gilt die Zeit beim Speichern.
- Trifft die Meldung früher ein, als Sie sie erfassen, geben Sie die Zeit des Eintreffens ein.
- Die Zeit darf nicht mehr als fünf Minuten in der Zukunft liegen.

Die Zeit ist wichtig: Personen, Mittel und die Nachrichtenkarte beziehen sich später auf diese Zeit. Nach der Triage lässt sie sich nicht mehr ändern. Mehr dazu in [Journal, Triage und Karte]({{< relref "/docs/user/explanation/einsatzjournal/journal-und-karte" >}}).

## Namen und Nummern übernehmen

Beim Tippen schlägt sitrep Namen, Nummern und Funkkanäle aus früheren Meldungen vor. Wählen Sie einen Vorschlag, sparen Sie Tipparbeit und vermeiden Tippfehler. Dieselbe Schreibweise für denselben Absender erleichtert später das Filtern.

## Den Inhalt formatieren

Das Feld **Inhalt** ist ein Markdown-Editor mit Werkzeugleiste, zum Beispiel für fett, Listen oder Überschriften. Die **Vorschau** unter dem Formular zeigt das Ergebnis. Schreiben Sie unter Zeitdruck einfach Text, die Formatierung ist freiwillig.

## Danach

Die Meldung steht im Einsatzjournal und wartet auf die Triage: [Eine Meldung triagieren]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}). Dateien ergänzen Sie mit [Anhang hinzufügen]({{< relref "/docs/user/how-to/einsatzjournal/anhang-hinzufuegen" >}}).
