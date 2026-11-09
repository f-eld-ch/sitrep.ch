---
title: "Ein Ereignis erstellen"
description: "Ein neues Ereignis mit Namen, Ort und Ressorts eröffnen."
weight: 10
---
Jeder angemeldete Benutzer kann ein Ereignis eröffnen. Wer es erstellt, wird dessen **Besitzer**. Eine geführte Einführung bietet das Tutorial [Ihr erstes Ereignis]({{< relref "/docs/user/tutorials/ereignis/erstes-ereignis" >}}). Alle Felder stehen in der Referenz [Das Formular eines Ereignisses]({{< relref "/docs/user/reference/ereignis/ereignis-formular" >}}).

## Ein Ereignis erstellen

1. Öffnen Sie die **Ereignisse**.
2. Klicken Sie auf **erstellen**.
3. Tragen Sie den **Ereignisnamen** ein. Er ist Pflicht, solange er fehlt, lässt sich nicht speichern.
4. Tragen Sie bei Bedarf den **Ort** ein.
5. Prüfen Sie die **Ressorts** und passen Sie sie an (siehe unten).
6. Klicken Sie auf **speichern**.

![Das Formular Neues Ereignis erstellen mit den Vorgaben bei Ressorts](/images/docs/ereignis/ereignis-formular-leer.webp)

sitrep öffnet das neue Ereignis im **Editor** des Einsatzjournals. Als Nächstes erfassen Sie die ersten Meldungen: [Eine Meldung erfassen]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

## Die Ressorts anpassen

Die Ressorts sind die Stellen, die Meldungen erhalten, zum Beispiel «C Lage» oder «Stabschef». Neue Ereignisse beginnen mit zwei Vorgaben. Sie richten sich nach der Sprache der Oberfläche, mit der Sie das Ereignis erstellen.

1. Tragen Sie unter **Neues Ressort hinzufügen** den **Namen** und das **Kürzel** ein. Beide Felder sind Pflicht.
2. Klicken Sie auf das Plus. Das Ressort steht in der Liste.
3. Mit dem roten Knopf neben einem Ressort entfernen Sie es wieder. Das geht nur, solange das Ereignis nicht gespeichert ist.

![Das Formular mit vier Ressorts: den beiden Vorgaben, Feuerwehr und Sanität](/images/docs/ereignis/ereignis-formular-ausgefuellt.webp)

Das Ressort **Nachrichtenkarte** ist immer dabei. Das System legt es an, es steht nicht im Formular.

Nach dem Speichern lassen sich Ressorts nur noch umbenennen und neue ergänzen, siehe [Ein Ereignis bearbeiten]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}).

## Ein untergeordnetes Ereignis erstellen

Gehört das Ereignis zu einem übergeordneten Ereignis (zum Beispiel das Ereignis einer Region zu dem des Kantons), wählen Sie es im Feld **Übergeordnetes Ereignis**. Mehr dazu in [Ein übergeordnetes Ereignis verknüpfen]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}).

## Wer das Ereignis sehen darf

Ob andere das Ereignis sehen und bearbeiten dürfen, bestimmt der **Zugangsmodus**. Er kommt aus dem Standard-Zugang der Administration. Solange dieser nicht eingestellt ist, sind neue Ereignisse **eingeschränkt**: Nur Sie sehen sie. Prüfen Sie den Zugang nach dem Erstellen:

- [Zugriff auf ein Ereignis verwalten]({{< relref "/docs/user/how-to/allgemein/ereigniszugriff-verwalten" >}})
- [Standard-Zugang festlegen]({{< relref "/docs/user/how-to/allgemein/standard-zugang" >}})
