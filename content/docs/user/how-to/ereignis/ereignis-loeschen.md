---
title: "Ein Ereignis löschen"
description: "Ein geschlossenes Ereignis aus der Ereignisliste entfernen."
weight: 50
---
{{< note type="warning" >}}
sitrep fragt vor dem Löschen **nicht nach**. Ein gelöschtes Ereignis verschwindet aus der Ereignisliste und lässt sich **in sitrep nicht wiederherstellen**. Die Daten des Ereignisses bleiben in der Datenbank archiviert. Zurückholen kann sie nur der Betrieb mit Zugriff auf die Datenbank.
{{< /note >}}

Löschen ist selten nötig. Wollen Sie ein beendetes Ereignis nur aus dem Weg haben, lassen Sie es **geschlossen**: Es ist dann standardmässig verborgen und jederzeit wieder auffindbar.

## Voraussetzungen

- Das Ereignis ist **geschlossen**. Ein offenes Ereignis müssen Sie zuerst schliessen: [Ein Ereignis abschliessen und wieder öffnen]({{< relref "/docs/user/how-to/ereignis/ereignis-abschliessen-und-wieder-oeffnen" >}}).
- Sie sind **Besitzer** des Ereignisses. Das gilt auch bei Offenem Zugriff: Nur der Besitzer sieht die Schaltfläche **löschen**.

## Ein Ereignis löschen

1. Öffnen Sie die **Ereignisse** und klicken Sie auf **Zeige geschlossene**.
2. Klicken Sie beim geschlossenen Ereignis auf **löschen**.

Das Ereignis verschwindet sofort aus der Liste.

![Die Ereignisliste nach dem Löschen: das Ereignis steht nicht mehr darin](/images/docs/ereignis/ereignisliste-nach-loeschen.webp)

## Was mit dem Ereignis geschieht

- Es steht nicht mehr in der Ereignisliste, auch nicht unter **Zeige geschlossene**.
- Die Daten (Meldungen, Personen, Mittel, Karte) bleiben in der Datenbank archiviert. In sitrep selbst gibt es keine Möglichkeit, das Ereignis zurückzuholen.
- War es ein Hauptereignis, stehen seine untergeordneten Ereignisse wieder auf oberster Ebene der Liste.

## Ein Ereignis versehentlich gelöscht

Wenden Sie sich an die Administration Ihrer sitrep-Installation. Nur mit Zugriff auf die Datenbank lässt sich ein gelöschtes Ereignis wiederherstellen.

Zum Hintergrund: [Der Lebenszyklus eines Ereignisses]({{< relref "/docs/user/explanation/ereignis/lebenszyklus-eines-ereignisses" >}}).
