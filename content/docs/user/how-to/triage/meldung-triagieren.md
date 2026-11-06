---
title: "Eine Meldung triagieren"
description: "Eine Meldung prüfen, dem Meldefluss zuweisen und die Triage abschliessen."
weight: 10
---
Diese Anleitung zeigt, wie Sie eine Meldung triagieren. Personen und Mittel erfassen Sie in den Schritten dazwischen, dazu gibt es eigene Anleitungen. Eine geführte Einführung bietet das Tutorial [Ihre erste Triage]({{< relref "/docs/user/tutorials/triage/erste-triage" >}}).

Voraussetzung: Im Ereignis gibt es mindestens eine Meldung. Meldungen legen Sie im **Editor** an, siehe [Eine Meldung erfassen]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

## Meldung wählen

1. Öffnen Sie **Triage** im Einsatzjournal.
2. Wählen Sie in der Liste eine Meldung. sitrep wählt zu Beginn die älteste noch offene Meldung.
3. Mit dem Filter **Nicht triagiert** zeigt die Liste nur offene Meldungen.

## Meldung prüfen

Dieser Schritt erscheint nur bei Meldungen, die noch nicht triagiert sind.

1. Kontrollieren Sie Absender, Empfänger, Zeit und Inhalt und korrigieren Sie, was nicht stimmt.
2. Fehlt Information, klicken Sie auf **Benötigt mehr Informationen**. Die Meldung bleibt offen und trägt den Status «mehr Informationen benötigt».
3. Sonst klicken Sie auf **Weiter**.

![Der Schritt Meldung überprüfen mit den Angaben der Meldung und den Knöpfen Benötigt mehr Informationen und Weiter](/images/docs/triage/triage-1-meldung.webp)

## Meldefluss festlegen

1. Wählen Sie die Ressorts, die die Meldung erhalten sollen. Mit dem Plusknopf einer Marke weisen Sie das Ressort zu, mit dem Minusknopf nehmen Sie es weg.
2. Soll die Meldung alle erreichen, schalten Sie **Schlüsselnachricht** ein. Die Priorität wird «wichtig» und alle Ressorts erhalten die Meldung.
3. Weisen Sie die Meldung dem Ressort **Nachrichtenkarte** zu, wenn etwas auf der Karte eingezeichnet werden soll.
4. Klicken Sie auf **Weiter**.

![Der Schritt Meldefluss mit dem Schalter Schlüsselnachricht und den Ressorts als Marken mit Plus- oder Minusknopf](/images/docs/triage/triage-2-meldefluss.webp)

## Personen und Mittel

Betrifft die Meldung Personen oder Einsatzmittel, erfassen Sie sie jetzt. Sonst klicken Sie auf **Weiter**.

- [Personen bei der Triage erfassen]({{< relref "/docs/user/how-to/triage/personen-erfassen" >}})
- [Mittel aufbieten und einsetzen]({{< relref "/docs/user/how-to/triage/mittel-aufbieten-und-einsetzen" >}})

## Triage abschliessen

1. Klicken Sie im letzten Schritt auf **Triage abschliessen**.
2. sitrep zeigt «Triage gespeichert». Klicken Sie auf **Nächste offene Meldung**, um weiterzumachen.

Alles wird in einem Zug gespeichert. Mit **Ctrl + ↵** gehen Sie zum nächsten Schritt oder schliessen im letzten Schritt ab.

## Eine Triage nachträglich ändern

1. Wählen Sie die bereits triagierte Meldung in der Liste.
2. Klicken Sie in der Zusammenfassung auf **Triage anpassen**.
3. Ändern Sie, was nötig ist, und schliessen Sie die Triage erneut ab.

Die Zeit der Meldung können Sie nach der Triage nicht mehr ändern.

## Wenn etwas nicht geht

| Meldung in sitrep | Ursache |
|---|---|
| «Dieses Ereignis ist abgeschlossen. Triage ist nicht mehr möglich.» | Das Ereignis wurde geschlossen. |
| «Die Zeit kann nicht mehr geändert werden, weil die Meldung bereits triagiert ist.» | Die Zeit einer triagierten Meldung ist gesperrt. |
| «Die Nachrichtenzeit darf nicht mehr als fünf Minuten in der Zukunft liegen.» | Korrigieren Sie die Zeit im Schritt **Meldung**. |

Alle Felder und Status stehen in der Referenz [Triage-Ansicht und Schritte]({{< relref "/docs/user/reference/triage/triage-schritte" >}}).
