---
title: "Ihre erste Triage"
description: "Zwei Meldungen triagieren und dabei Personen und ein Einsatzmittel erfassen."
weight: 10
---
In diesem Tutorial triagieren Sie zwei Meldungen eines erfundenen Ereignisses, «Murgang in Bergdorf». Sie erfassen Personen, bieten ein Einsatzmittel auf, setzen es ein und sehen am Schluss die Personenübersicht und die Mitteltabelle. Alle Namen und Zahlen sind erfunden.

Sie brauchen:

- ein Ereignis, in dem Sie Meldungen erfassen und triagieren dürfen, am besten ein Übungsereignis,
- etwa 15 Minuten.

## 1. Zwei Meldungen anlegen

1. Öffnen Sie das Ereignis und im Einsatzjournal den **Editor**.
2. Legen Sie diese Meldung an: *«Feuerwehr Altdorf meldet: Zug mit 24 Angehörigen aufgeboten, Eintreffen in 20 Minuten. Bisher 3 Verletzte, 2 Personen vermisst.»*
3. Legen Sie eine zweite Meldung an, mit einer späteren Zeit: *«Zug 1 Feuerwehr Altdorf ist eingetroffen und beginnt mit der Suche. Eine vermisste Person wurde gefunden, leicht verletzt.»*

Absender und Empfänger wählen Sie frei. Beide Meldungen sind jetzt noch nicht triagiert.

## 2. Die erste Meldung prüfen

1. Öffnen Sie **Triage** im Einsatzjournal. sitrep wählt die älteste offene Meldung, also die erste.
2. Im Schritt **Meldung** kontrollieren Sie Absender, Empfänger, Zeit und Inhalt.
3. Klicken Sie auf **Weiter**.

## 3. Den Meldefluss festlegen

1. Weisen Sie die Meldung dem Ressort **Nachrichtenkarte** und dem Ressort **C Lage** zu: Klicken Sie bei beiden auf den Plusknopf.
2. Klicken Sie auf **Weiter**.

Die Meldung gehört nicht zu den Schlüsselnachrichten, lassen Sie den Schalter aus.

## 4. Personen erfassen

1. Stellen Sie bei **Verletzte** `+3` und bei **Vermisste** `+2` ein.
2. Rechts sehen Sie die Vorschau der Änderung.
3. Klicken Sie auf **Weiter**.

## 5. Das Mittel aufbieten

1. Klicken Sie im Schritt **Mittel** auf **Neues Mittel aufbieten**.
2. Wählen Sie **Feuerwehr**, tragen Sie `Altdorf` als Ortsbezeichnung und `Zug 1` als Namen ein und geben Sie `24` Personen ein.
3. sitrep schlägt die Grösse **Zug** vor. Klicken Sie auf **Mittel aufbieten**.
4. Klicken Sie auf **Triage abschliessen**.

sitrep zeigt «Triage gespeichert». Das Mittel hat den Status **Aufgeboten**.

## 6. Die zweite Meldung triagieren

1. Klicken Sie auf **Nächste offene Meldung**.
2. Weisen Sie im Meldefluss das Ressort **Nachrichtenkarte** zu und klicken Sie auf **Weiter**.
3. Erfassen Sie bei **Vermisste** `−1` und bei **Verletzte** `+1`. Klicken Sie auf **Weiter**.
4. Wählen Sie im Schritt **Mittel** das Mittel «Zug 1» und klicken Sie auf **Einsatzbereit melden**.
5. Tragen Sie als **Hauptaufgabe** `Vermisste suchen` und als **Einsatzort** `Murgang Bergdorf` ein und klicken Sie auf **Einsetzen**.
6. Klicken Sie auf **Triage abschliessen**.

## 7. Das Ergebnis ansehen

1. Öffnen Sie **Personenübersicht**. Es stehen **4 Verletzte** und **1 Vermisste** darin.
2. Öffnen Sie **Mittel**. «Zug 1» ist **Eingesetzt**, mit 24 Personen, der Hauptaufgabe und dem Einsatzort. Als Zeiten stehen die Zeiten Ihrer beiden Meldungen.

<!-- Screenshot: tutorial-ergebnis.webp – Personenübersicht (4 Verletzte, 1 Vermisste) und Mitteltabelle mit «Zug 1» -->

Sie haben zwei Meldungen triagiert und gesehen, wie aus der Triage die Übersichten entstehen. Wie es weitergeht:

- Die erste Meldung ist dem Ressort Nachrichtenkarte zugewiesen. Das Tutorial [Ihre erste Nachrichtenkarte]({{< relref "/docs/user/tutorials/nachrichtenkarte/erste-nachrichtenkarte" >}}) zeichnet sie ein.
- Für den Alltag: [Eine Meldung triagieren]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}).
- Warum die Triage der Ort für diese Angaben ist: [Triage und Lagebild]({{< relref "/docs/user/explanation/triage/triage-und-lagebild" >}}).
