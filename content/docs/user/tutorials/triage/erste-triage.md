---
title: "Ihre erste Triage"
description: "Zwei Meldungen triagieren und dabei Personen und ein Einsatzmittel erfassen."
weight: 10
---
In diesem Tutorial triagieren Sie die zwei Meldungen aus dem Tutorial [Ihre erste Meldung erfassen]({{< relref "/docs/user/tutorials/einsatzjournal/erste-meldung" >}}), Ereignis «Unwetter Bergdorf – Murgang Dorfbach». Sie erfassen Personen, bieten ein Einsatzmittel auf, setzen es ein und sehen am Schluss die Personenübersicht und die Mitteltabelle. Alle Namen und Zahlen sind erfunden.

Sie brauchen:

- die beiden erfassten Meldungen aus dem vorigen Tutorial, im Status **pendent**,
- die Berechtigung, Meldungen zu triagieren,
- etwa 15 Minuten.

{{< note type="info" >}}
Die Bilder stammen aus einem Übungsereignis mit weiteren Meldungen. Ihre Meldungsnummern und Gesamtzahlen sind kleiner.
{{< /note >}}

## 1. Die erste Meldung prüfen

1. Öffnen Sie **Triage** im Einsatzjournal. sitrep wählt die älteste offene Meldung, also die erste: die Meldung der Sanität.
2. Im Schritt **Meldung** kontrollieren Sie Kommunikation, Empfänger, Anrufer, Zeit und Inhalt.
3. Klicken Sie auf **Weiter**.

![Triage, Schritt 1: Die Meldung überprüfen. Links die Meldungsliste, rechts die Meldung und die Schrittleiste.](/images/docs/triage/triage-1-meldung.webp)

## 2. Den Meldefluss festlegen

1. Weisen Sie die Meldung den Ressorts **C Lage** und **Chef Einsatz** zu: Klicken Sie bei beiden auf den Plusknopf.
2. Klicken Sie auf **Weiter**.

Die Meldung ist keine Schlüsselnachricht. Lassen Sie den Schalter aus.

![Triage, Schritt 2: Meldefluss mit dem Schalter Schlüsselnachricht und den Ressorts C Lage und Chef Einsatz als zugewiesen](/images/docs/triage/triage-2-meldefluss.webp)

## 3. Personen erfassen

1. Stellen Sie bei **Verletzte** `3` ein. Die anderen Kategorien bleiben bei 0.
2. Rechts sehen Sie die Vorschau der Änderung.
3. Klicken Sie auf **Weiter**.

![Triage, Schritt 3: Personen mit drei Verletzten und der Vorschau der Personenübersicht](/images/docs/triage/triage-3-personen.webp)

## 4. Das Mittel aufbieten

1. Klicken Sie im Schritt **Mittel** auf **Neues Mittel aufbieten**.
2. Wählen Sie die Formation **Sanität**.
3. Tragen Sie `Region Bergdorf` als Ortsbezeichnung und `Gruppe 2` als Namen ein und geben Sie `6` Personen ein.
4. sitrep schlägt die Grösse **Gruppe** vor. Klicken Sie auf **Mittel aufbieten**.
5. Klicken Sie auf **Triage abschliessen**.

![Triage, Schritt 4: Das Formular Neues Mittel aufbieten mit Formation Sanität, Region Bergdorf, Gruppe 2 und 6 Personen](/images/docs/triage/triage-4-mittel-aufbieten.webp)

sitrep zeigt «Triage gespeichert». Das Mittel hat den Status **Aufgeboten**.

## 5. Die zweite Meldung triagieren

1. Klicken Sie auf **Nächste offene Meldung**. Es ist die Meldung, dass Gruppe 2 eingetroffen ist.
2. Weisen Sie im Meldefluss die Ressorts **C Lage** und **Nachrichtenkarte** zu und klicken Sie auf **Weiter**.
3. Im Schritt **Personen** ändert sich nichts. Klicken Sie auf **Weiter**.
4. Wählen Sie im Schritt **Mittel** das Mittel «Gruppe 2» und klicken Sie auf **Einsatzbereit melden**.
5. Tragen Sie als **Hauptaufgabe** `Erstversorgung und Transport` und als **Einsatzort** `Dorfstrasse` ein und klicken Sie auf **Einsetzen**.
6. Klicken Sie auf **Triage abschliessen**.

## 6. Das Ergebnis ansehen

1. Öffnen Sie **Personenübersicht**. Bei den Verletzten stehen jetzt 3 mehr als vorher.
2. Öffnen Sie **Mittel**. «Gruppe 2» der Sanität ist **Eingesetzt**, mit 6 Personen, der Hauptaufgabe und dem Einsatzort. Als Zeiten stehen die Zeiten Ihrer beiden Meldungen.

![Die Personenübersicht mit den fünf Kategorien](/images/docs/triage/personenuebersicht.webp)

![Die Mitteltabelle, nach Formation gruppiert, mit Status, Erreichbarkeit, Zeiten, Hauptaufgabe und Einsatzort](/images/docs/triage/mitteltabelle.webp)

Sie haben zwei Meldungen triagiert und gesehen, wie aus der Triage die Übersichten entstehen. Wie es weitergeht:

- Die zweite Meldung ist dem Ressort Nachrichtenkarte zugewiesen. Das Tutorial [Ihre erste Nachrichtenkarte]({{< relref "/docs/user/tutorials/lagebild/erste-nachrichtenkarte" >}}) zeichnet sie ein.
- Für den Alltag: [Eine Meldung triagieren]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}).
- Warum die Triage der Ort für diese Angaben ist: [Triage und Lagebild]({{< relref "/docs/user/explanation/triage/triage-und-lagebild" >}}).
