---
title: "Mittel aufbieten und einsetzen"
description: "Ein Einsatzmittel aufbieten, einsetzen, ablösen, entlassen und reaktivieren."
weight: 30
---
Sie führen die Mittel im Schritt **Mittel** der Triage. Jede Änderung wird mit der **Zeit der Meldung** festgehalten, die Sie gerade triagieren. Status und Übergänge stehen in der Referenz [Mittelübersicht und Mitteltabelle]({{< relref "/docs/user/reference/triage/mitteltabelle" >}}).

Alle Aktionen beginnen gleich: Öffnen Sie die Meldung in der **Triage** und gehen Sie zum Schritt **Mittel**.

## Ein Mittel für die Meldung auswählen

Handelt die Meldung von einem Mittel, das schon erfasst ist:

1. Suchen Sie es im Suchfeld **Mittel suchen…**, oder klicken Sie auf **weitere anzeigen**.
2. Klicken Sie das Mittel an (Tipp: «Zur Meldung hinzufügen»). Es ist jetzt mit der Meldung verknüpft und steht oben in der Liste.
3. Klicken Sie auf **bearbeiten**, um seine Karte zu öffnen. Mit dem Kreuz nehmen Sie das Mittel wieder aus der Meldung.

![Die Mittelliste einer Meldung: das neu aufgebotene Mittel steht oben, darunter die weiteren Mittel des Ereignisses](/images/docs/triage/triage-4-mittel-liste.webp)

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

1. [Wählen Sie das aufgebotene Mittel aus](#ein-mittel-für-die-meldung-auswählen) und öffnen Sie es mit **bearbeiten**.
2. Tragen Sie bei Bedarf die [Erreichbarkeit](#die-erreichbarkeit-pflegen) ein.
3. Klicken Sie auf **Einsatzbereit melden**. Die Karte schliesst sich.

![Die Karte eines aufgebotenen Mittels mit dem Feld Kontakt, dem Knopf Einsatzbereit melden und Angaben korrigieren](/images/docs/triage/triage-mittel-aufgeboten.webp)

## Ein Mittel einsetzen

1. Öffnen Sie das einsatzbereite Mittel mit **bearbeiten**.
2. Tragen Sie die **Hauptaufgabe** und den **Einsatzort** ein. Beide sind Pflicht.
3. Klicken Sie auf **Einsetzen**.

Fehlt eine Angabe, bleibt der Knopf wirkungslos und das Feld wird als Pflichtfeld markiert.

![Die Karte eines einsatzbereiten Mittels mit Hauptaufgabe, Einsatzort und den Knöpfen Einsetzen und Entlassen](/images/docs/triage/triage-mittel-einsetzen.webp)

## Einsatz abschliessen oder umdisponieren

- **Einsatz abgeschlossen** setzt das Mittel zurück auf **Einsatzbereit**.
- Soll das Mittel einen neuen Auftrag erhalten, schliessen Sie den Einsatz ab, tragen die neue Hauptaufgabe und den neuen Einsatzort ein und klicken auf **Einsetzen**.

## Ein Mittel ablösen

1. Öffnen Sie das eingesetzte Mittel mit **bearbeiten**.
2. Wählen Sie unter **Ablösung durch** das Mittel, das übernimmt. Es muss schon erfasst sein und darf nicht abgelöst sein.
3. Klicken Sie auf **Ablösen**.

![Die Karte eines eingesetzten Mittels mit der Auswahl Ablösung durch und den Knöpfen Einsatz abgeschlossen, Ablösen und Entlassen](/images/docs/triage/triage-mittel-abloesen.webp)

Das Nachfolgemittel übernimmt Auftrag und Einsatzort und wird eingesetzt. Das abgelöste Mittel erhält den Status **Abgelöst** und bleibt mit seiner Einsatzgeschichte in der Mitteltabelle.

## Ein Mittel entlassen

Klicken Sie bei einem einsatzbereiten oder eingesetzten Mittel auf **Entlassen**. Das Mittel erhält den Status **Abgelöst**, ohne dass ein Nachfolger festgelegt wird.

## Ein abgelöstes Mittel reaktivieren

Bei mehrtägigen Einsätzen kann ein abgelöstes Mittel zurückkehren.

1. Öffnen Sie im Schritt **Mittel** unter der Liste den Bereich **Abgelöst**. Er erscheint, sobald es abgelöste Mittel gibt, die nicht mit dieser Meldung verknüpft sind.
2. Klicken Sie beim Mittel auf **Reaktivieren**.

![Der Bereich Abgelöst unter der Mittelliste mit einem abgelösten Mittel und dem Knopf Reaktivieren](/images/docs/triage/triage-mittel-abgeloest.webp)

Das Mittel ist wieder **Aufgeboten**. Auftrag, Einsatzort und Ablösung des vorherigen Einsatzes werden zurückgesetzt, die Einsatzgeschichte bleibt.

## Die Erreichbarkeit pflegen

1. Öffnen Sie das Mittel mit **bearbeiten**.
2. Wählen Sie die Art (Telefon, Funk oder Andere) und tragen Sie die Angabe ein, zum Beispiel den Funkkanal oder die Nummer.
3. Bestätigen Sie die Angabe, wo sitrep dies verlangt.

Bei einem aufgebotenen Mittel steht das Feld **Kontakt** direkt im Mittel. Bei einsatzbereiten und eingesetzten Mitteln finden Sie es unter **Angaben korrigieren**.

## Name, Kontakt oder Personenzahl korrigieren

1. Öffnen Sie das Mittel mit **bearbeiten** und klicken Sie auf **Angaben korrigieren**.
2. Ändern Sie Name, Kontakt oder Personenzahl und klicken Sie auf **speichern**.

![Die Karte mit geöffneten Angaben: Name des Mittels, Kontakt und Personen, mit speichern und Abbrechen](/images/docs/triage/triage-mittel-angaben-korrigieren.webp)

Ein abgelöstes Mittel lässt sich nicht mehr ändern. Die Personenzahl wird auf eine ganze Zahl von mindestens 1 geprüft.
