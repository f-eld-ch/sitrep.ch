---
title: "Das Formular eines Ereignisses"
description: "Felder, Pflichtangaben und Vorgaben beim Erstellen und Bearbeiten."
weight: 20
---
Dasselbe Formular dient zum Erstellen und zum Bearbeiten eines Ereignisses. Anleitungen: [Ein Ereignis erstellen]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}) und [Ein Ereignis bearbeiten]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}).

![Das Formular Neues Ereignis erstellen mit den Vorgaben bei Ressorts](/images/docs/ereignis/ereignis-formular-leer.webp)

## Felder

| Feld | Pflicht | Inhalt und Regeln |
|---|---|---|
| **Ereignisname** | ja | Name des Ereignisses. Solange er leer ist, lässt sich nicht speichern. |
| **Übergeordnetes Ereignis** | nein | Auswahl aus offenen Ereignissen, die selbst kein übergeordnetes Ereignis haben. Vorgabe: «kein übergeordnetes Ereignis». Beim Bearbeiten fehlt das Feld, wenn das Ereignis eigene untergeordnete Ereignisse hat. |
| **Ort** | nein | Freier Text |
| **Ressorts** | – | Stellen, die Meldungen erhalten. Je Ressort ein **Name** und ein **Kürzel** |

## Ressorts

- Der **Name** steht im Meldefluss der Triage, das **Kürzel** als kleine Marke an den Meldungen.
- Neue Ereignisse beginnen mit zwei Vorgaben. Sie sind fest in sitrep hinterlegt und folgen der **Sprache der Oberfläche** beim Erstellen:

| Sprache | Vorgabe 1 (Name / Kürzel) | Vorgabe 2 (Name / Kürzel) |
|---|---|---|
| Deutsch | C Lage / Lage | Stabschef / SC |
| Französisch | Chef du suivi de la situation / C suivi | Chef d'état-major / C EM |
| Italienisch | Capo ANSIT / ANSIT | Capo di stato maggiore / C SM |

- Unter **Neues Ressort hinzufügen** ergänzen Sie weitere. Name und Kürzel sind beide Pflicht, das Plus ist sonst gesperrt.
- Ein Ressort, das noch nicht gespeichert ist, lässt sich mit dem roten Knopf entfernen.
- Ein gespeichertes Ressort lässt sich nur **umbenennen**, nicht entfernen.
- Das Ressort **Nachrichtenkarte** legt das System an. Es steht nicht im Formular und ist nicht änderbar.

![Das Formular mit vier Ressorts: den beiden Vorgaben, Feuerwehr und Sanität](/images/docs/ereignis/ereignis-formular-ausgefuellt.webp)

## Beim Bearbeiten zusätzlich

- Der Titel heisst **Ereignis bearbeiten**.
- Unter dem Formular stehen der **Zugriffsmodus** und der **Ereigniszugriff**. Siehe [Zugriff auf ein Ereignis verwalten]({{< relref "/docs/user/how-to/allgemein/ereigniszugriff-verwalten" >}}).

![Das Formular Ereignis bearbeiten mit dem gewählten übergeordneten Ereignis](/images/docs/ereignis/ereignis-uebergeordnet-gewaehlt.webp)

## Nach dem Speichern

sitrep öffnet den **Editor** des Einsatzjournals dieses Ereignisses.
