---
title: "Personen- und Mittelzählung"
description: "Warum Änderungen statt Stände erfasst werden und warum nur eingesetzte Mittel zählen."
weight: 20
---
## Änderungen statt Stände

Eine Meldung sagt selten «es gibt jetzt 17 Verletzte». Sie sagt «drei weitere Leichtverletzte». sitrep erfasst darum bei jeder Meldung die **Änderung**: `+3`, `−1`. Der Stand ist die Summe aller Änderungen.

Das hat drei Folgen:

- **Nachvollziehbar.** Jede Zahl lässt sich auf die Meldungen zurückführen, die sie verändert haben.
- **Korrigierbar.** Wird eine Meldung nachträglich angepasst, ändert sich nur ihr Beitrag. Der Rest der Zahlen bleibt stimmig.
- **Kein Abgleich.** Zwei Personen, die gleichzeitig an verschiedenen Meldungen arbeiten, überschreiben einander nicht. Beide Änderungen zählen.

Eine Person, die gefunden wurde und verletzt ist, ist eine doppelte Änderung: eine Vermisste weniger, ein Verletzter mehr. Dass die Zähler nie unter 0 fallen, verhindert, dass eine Rücknahme mehr Personen entfernt, als es gibt.

## Nur eingesetzte Mittel zählen

In den Zahlen der Mitteltabelle zählen nur Mittel, die im Einsatz sind. Aufgebotene und einsatzbereite Mittel werden separat als Statusmarken ausgewiesen.

Der Grund ist die Einsatzstärke. Ein aufgebotenes Mittel ist noch nicht am Schadenplatz, und ein einsatzbereites arbeitet noch nicht. Zählte die Summe sie mit, überschätzte der Stab, was vor Ort wirklich geleistet wird. Im Beispiel: Die Armee ist mit 40 Personen aufgeboten, aber noch nicht im Einsatz. Ihr Beitrag zur Summe ist 0, bis sie eingesetzt wird.

## Jede Änderung hat die Zeit der Meldung

Jede Änderung an einem Mittel, vom Aufbieten bis zur Ablösung, wird mit der Zeit der Meldung festgehalten, nicht mit dem Moment, in dem jemand sie eingetippt hat. So stimmt die Tabelle auch, wenn eine Meldung erst später triagiert wird.

## Pflichtangaben und Identität

- Ein Mittel lässt sich nur einsetzen, wenn Hauptaufgabe und Einsatzort bekannt sind. So zeigt die Tabelle nie ein Mittel im Einsatz ohne Auftrag.
- Formation, Ortsbezeichnung und Name bilden zusammen die Identität. Ein aktives Mittel kann nicht doppelt erfasst werden. Kehrt ein abgelöstes Mittel zurück, reaktivieren Sie es, statt es neu zu erfassen. So bleibt seine Einsatzgeschichte zusammenhängend.

## Ablösung

Wird ein Mittel durch ein anderes abgelöst, übernimmt das neue Auftrag und Einsatzort. Das abgelöste Mittel bleibt mit seiner Geschichte in der Tabelle, damit der Verlauf sichtbar bleibt.

## Siehe auch

- [Personenübersicht]({{< relref "/docs/user/reference/triage/personenkategorien" >}})
- [Mittelübersicht und Mitteltabelle]({{< relref "/docs/user/reference/triage/mitteltabelle" >}})
