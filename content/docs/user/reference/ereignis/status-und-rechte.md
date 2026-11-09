---
title: "Status und Rechte eines Ereignisses"
description: "Die Status offen, geschlossen und gelöscht und wer welche Aktion darf."
weight: 30
---
Ein Ereignis hat einen **Status**, und jede Aktion braucht eine **Rolle**. Die Rollen selbst beschreibt die Referenz [Zugriffssteuerung]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).

## Status

| Status | Bedeutung | In der Ereignisliste |
|---|---|---|
| **offen** | Das Ereignis läuft. Alles lässt sich erfassen und ändern. | normale Karte |
| **geschlossen** | Das Ereignis ist beendet. Es lässt sich ansehen, aber nicht mehr verändern. | gelbe Karte, nur mit **Zeige geschlossene** |
| **gelöscht** | Das Ereignis ist aus sitrep entfernt. Seine Daten sind in der Datenbank archiviert. | nicht mehr sichtbar |

Übergänge:

- offen → geschlossen: **schliessen**
- geschlossen → offen: **öffnen**
- geschlossen → gelöscht: **löschen**

Ein offenes Ereignis lässt sich nicht löschen. Ein gelöschtes lässt sich in sitrep nicht wiederherstellen.

## Wer was darf

| Aktion | Mindestrolle | Status des Ereignisses |
|---|---|---|
| Ereignis erstellen | jeder angemeldete Benutzer (wird Besitzer) | – |
| Ereignis ansehen, **eintreten** | Betrachter | offen oder geschlossen |
| Meldungen erfassen, triagieren, Personen und Mittel führen, Karte zeichnen | Bearbeiter | offen |
| Name, Ort und Ressorts ändern (**bearbeiten**) | Bearbeiter | offen |
| Übergeordnetes Ereignis verknüpfen oder lösen | Bearbeiter | offen |
| **schliessen** | Manager | offen |
| **öffnen** | Manager | geschlossen |
| Zugriff verwalten | Manager | – |
| **löschen** | Besitzer | geschlossen |
| Gelöschtes Ereignis wiederherstellen | in sitrep nicht möglich, nur mit Datenbank-Zugriff | gelöscht |

Bei einem Ereignis mit **Offenem Zugriff** darf jeder angemeldete Benutzer alles ausser dem **Löschen**. Dieses bleibt auch dort dem Besitzer vorbehalten.

## Was in einem geschlossenen Ereignis gesperrt ist

- Meldungen erfassen und korrigieren
- Meldungen triagieren
- Personen und Mittel führen
- auf der Nachrichtenkarte zeichnen und Meldungen abschliessen
- das Ereignis bearbeiten

Ansehen bleibt möglich. sitrep meldet beim Versuch zu ändern: «Das Ereignis ist nicht offen.»

## Fehlermeldungen

| Meldung | Ursache |
|---|---|
| «Das Ereignis ist nicht offen.» | Sie ändern etwas an einem geschlossenen Ereignis. |
| «Das Ereignis muss zuerst geschlossen werden.» | Sie löschen ein Ereignis, das noch offen ist. |
| «Das Ereignis wurde bereits gelöscht.» | Das Ereignis ist schon gelöscht. |
| «Das ausgewählte übergeordnete Ereignis kann nicht verwendet werden.» | Das gewählte Hauptereignis erfüllt die Bedingungen nicht, siehe [Ein übergeordnetes Ereignis verknüpfen]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}). |
| «Sie haben keine Berechtigung für diese Aktion.» | Ihre Rolle reicht nicht. |

Warum ein Ereignis so verläuft, erklärt [Der Lebenszyklus eines Ereignisses]({{< relref "/docs/user/explanation/ereignis/lebenszyklus-eines-ereignisses" >}}).
