---
title: "Mittel aufbieten und einsetzen"
description: "Ein Einsatzmittel aufbieten, einsetzen, ablösen, entlassen und reaktivieren."
weight: 30
---
Sie führen die Mittel im Schritt **Mittel** der Triage. Jede Änderung wird mit der **Zeit der Meldung** festgehalten, die Sie gerade triagieren. Status und Übergänge stehen in der Referenz [Mittelübersicht und Mitteltabelle]({{< relref "/docs/user/reference/triage/mitteltabelle" >}}).

Alle Aktionen beginnen gleich: Öffnen Sie die Meldung in der **Triage** und gehen Sie zum Schritt **Mittel**.

## Ein Mittel aufbieten

1. Klicken Sie auf **Neues Mittel aufbieten**.
2. Wählen Sie die **Formation**.
3. Tragen Sie die **Formations- oder Ortsbezeichnung** (zum Beispiel `Altdorf`) und den **Namen des Mittels** (zum Beispiel `Zug 1`) ein.
4. Geben Sie die Zahl der **Personen** ein. sitrep schlägt die Grösse (Trupp, Gruppe, Zug …) vor.
5. Klicken Sie auf **Mittel aufbieten**.

Das Mittel erhält den Status **Aufgeboten** und ist mit der Meldung verknüpft.

![Das Formular zum Aufbieten eines Mittels: Formation, Ortsbezeichnung, Name, Personen und die Grösse Gruppe als Vorschlag](/images/docs/triage/triage-4-mittel-aufbieten.webp)

Gibt es das Mittel schon, meldet sitrep einen Fehler. Ist es abgelöst, bietet sitrep an, es zu [reaktivieren](#ein-abgelöstes-mittel-reaktivieren).

## Ein Mittel einsatzbereit melden

1. Wählen Sie das aufgebotene Mittel in der Liste.
2. Tragen Sie bei Bedarf die [Erreichbarkeit](#die-erreichbarkeit-pflegen) ein.
3. Klicken Sie auf **Einsatzbereit melden**.

## Ein Mittel einsetzen

1. Wählen Sie das einsatzbereite Mittel.
2. Tragen Sie die **Hauptaufgabe** und den **Einsatzort** ein. Beide sind Pflicht.
3. Klicken Sie auf **Einsetzen**.

Fehlt eine Angabe, bleibt der Knopf wirkungslos und das Feld wird als Pflichtfeld markiert.

## Einsatz abschliessen oder umdisponieren

- **Einsatz abgeschlossen** setzt das Mittel zurück auf **Einsatzbereit**.
- Soll das Mittel einen neuen Auftrag erhalten, schliessen Sie den Einsatz ab, tragen die neue Hauptaufgabe und den neuen Einsatzort ein und klicken auf **Einsetzen**.

## Ein Mittel ablösen

1. Wählen Sie das eingesetzte Mittel.
2. Wählen Sie unter **Ablösung durch** das Mittel, das übernimmt. Es muss schon aufgeboten sein.
3. Klicken Sie auf **Ablösen**.

Das Nachfolgemittel übernimmt Auftrag und Einsatzort und wird eingesetzt. Das abgelöste Mittel erhält den Status **Abgelöst** und bleibt mit seiner Einsatzgeschichte in der Mitteltabelle.

## Ein Mittel entlassen

Klicken Sie bei einem einsatzbereiten oder eingesetzten Mittel auf **Entlassen**. Das Mittel erhält den Status **Abgelöst**, ohne dass ein Nachfolger festgelegt wird.

## Ein abgelöstes Mittel reaktivieren

Bei mehrtägigen Einsätzen kann ein abgelöstes Mittel zurückkehren.

1. Öffnen Sie im Schritt **Mittel** den Bereich **Abgelöst**.
2. Wählen Sie das Mittel und klicken Sie auf **Reaktivieren**.

Das Mittel ist wieder **Aufgeboten**. Auftrag, Einsatzort und Ablösung des vorherigen Einsatzes werden zurückgesetzt, die Einsatzgeschichte bleibt.

## Die Erreichbarkeit pflegen

1. Wählen Sie das Mittel.
2. Wählen Sie die Art (Telefon, Funk, E-Mail oder Andere) und tragen Sie die Angabe ein, zum Beispiel den Funkkanal oder die Nummer.
3. Bestätigen Sie die Angabe, wo sitrep dies verlangt.

Bei einem aufgebotenen Mittel steht das Feld **Kontakt** direkt im Mittel. Bei einsatzbereiten und eingesetzten Mitteln finden Sie es unter **Angaben korrigieren**.

## Name, Kontakt oder Personenzahl korrigieren

1. Wählen Sie das Mittel und öffnen Sie **Angaben korrigieren**.
2. Ändern Sie Name, Kontakt oder Personenzahl und speichern Sie.

Ein abgelöstes Mittel lässt sich nicht mehr ändern. Die Personenzahl wird auf eine ganze Zahl von mindestens 1 geprüft.

## Ein Mittel mit der Meldung verknüpfen

Wählen Sie ein bestehendes Mittel mit **Zur Meldung hinzufügen**, wenn die Meldung von ihm handelt. Das Suchfeld **Mittel suchen…** hilft bei langen Listen.
