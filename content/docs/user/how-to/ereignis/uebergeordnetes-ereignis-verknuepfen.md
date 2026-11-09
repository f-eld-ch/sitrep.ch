---
title: "Ein übergeordnetes Ereignis verknüpfen"
description: "Ein Ereignis einem übergeordneten Ereignis zuordnen oder die Zuordnung lösen."
weight: 30
---
Mit einem übergeordneten Ereignis führen Sie die Lage mehrerer Ereignisse zusammen, zum Beispiel die der Regionen im Kanton. Wozu das gut ist, steht in [Übergeordnete und untergeordnete Ereignisse]({{< relref "/docs/user/explanation/ereignis/uebergeordnete-und-untergeordnete-ereignisse" >}}). Sie brauchen für das untergeordnete Ereignis mindestens die Rolle **Bearbeiter**.

## Beim Erstellen verknüpfen

1. Öffnen Sie die **Ereignisse** und klicken Sie auf **erstellen**.
2. Wählen Sie im Feld **Übergeordnetes Ereignis** das Hauptereignis.
3. Füllen Sie das Formular aus und klicken Sie auf **speichern**. Siehe [Ein Ereignis erstellen]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}).

## Ein bestehendes Ereignis verknüpfen

1. Klicken Sie beim Ereignis, das untergeordnet werden soll, auf **bearbeiten**.
2. Wählen Sie im Feld **Übergeordnetes Ereignis** das Hauptereignis.
3. Klicken Sie auf **speichern**.

![Das Formular Ereignis bearbeiten mit dem gewählten übergeordneten Ereignis](/images/docs/ereignis/ereignis-uebergeordnet-gewaehlt.webp)

In der Ereignisliste steht das Ereignis jetzt eingerückt unter dem Hauptereignis.

![Die Ereignisliste: unter dem Kantonalen Führungsorgan stehen drei untergeordnete Ereignisse](/images/docs/ereignis/ereignisliste-hierarchie.webp)

## Die Verknüpfung lösen

1. Klicken Sie beim untergeordneten Ereignis auf **bearbeiten**.
2. Wählen Sie «kein übergeordnetes Ereignis».
3. Klicken Sie auf **speichern**.

Das Ereignis steht wieder auf oberster Ebene.

## Was zur Auswahl steht

Das Feld **Übergeordnetes Ereignis** bietet nur Ereignisse an, die

- **offen** sind,
- nicht gelöscht sind,
- selbst kein übergeordnetes Ereignis haben,
- und nicht das Ereignis selbst sind.

Es gibt **zwei Ebenen**: Ein Ereignis ist entweder Hauptereignis oder untergeordnet, nie beides. Hat ein Ereignis eigene untergeordnete Ereignisse, zeigt sein Formular das Feld **Übergeordnetes Ereignis** gar nicht. Lösen Sie zuerst deren Verknüpfung, wenn Sie es selbst unterordnen wollen.

## Gut zu wissen

- Schliessen Sie ein Hauptereignis, bleiben die untergeordneten Ereignisse offen und mit ihm verknüpft.
- Löschen Sie ein Hauptereignis, zeigt die Ereignisliste dessen untergeordnete Ereignisse wieder auf oberster Ebene.
