---
title: "Die Ereignisliste"
description: "Aufbau der Ereignisliste: Karten, Schaltflächen je Status und Filter."
weight: 10
---
Die Ereignisliste öffnet sich nach der Anmeldung und über das Logo oben links. Sie zeigt alle Ereignisse, die Sie sehen dürfen. Anleitungen zu den Aktionen stehen im Bereich [Ereignisse]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}).

![Die Ereignisliste mit den Schaltflächen erstellen und Zeige geschlossene und den offenen Ereignissen als Karten](/images/docs/ereignis/ereignisliste.webp)

## Schaltflächen über der Liste

| Schaltfläche | Wirkung |
|---|---|
| **erstellen** | Öffnet das Formular für ein neues Ereignis |
| **Zeige geschlossene** | Zeigt auch die geschlossenen Ereignisse. Danach heisst sie **Verstecke geschlossene**. |

Standardmässig sind geschlossene Ereignisse verborgen.

## Die Karte eines Ereignisses

| Angabe | Inhalt |
|---|---|
| Titel | Name des Ereignisses, daneben eine Marke für den Zugriff |
| **Ort** | Ort des Ereignisses, sofern eingetragen |
| **Eröffnet** | Zeitpunkt, an dem das Ereignis erstellt wurde |
| **Geschlossen** | Zeitpunkt des Schliessens, nur bei geschlossenen Ereignissen |

**Marke für den Zugriff:** Ein geschlossenes Schloss bedeutet **Eingeschränkt**, ein geöffnetes **Offener Zugriff**. Beim Darüberfahren steht der Name als Hinweis. Siehe [Zugriffssteuerung]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).

Geschlossene Ereignisse haben einen gelben Hintergrund.

![Die Liste mit den geschlossenen Ereignissen, gelb unterlegt](/images/docs/ereignis/ereignisliste-geschlossene.webp)

## Schaltflächen auf der Karte

Welche Schaltflächen eine Karte zeigt, hängt vom Status des Ereignisses und von Ihrer Rolle ab.

| Schaltfläche | Wirkung | Offen | Geschlossen | Rolle |
|---|---|---|---|---|
| **eintreten** | Öffnet das Ereignis (die Übersicht) | ja | ja | Betrachter |
| **bearbeiten** | Öffnet das Formular zum Bearbeiten | ja | nein | Bearbeiter |
| **schliessen** | Schliesst das Ereignis | ja | nein | Manager |
| **öffnen** | Öffnet das Ereignis wieder | nein | ja | Manager |
| **löschen** | Löscht das Ereignis | nein | ja | Besitzer |

Das Formular zum Bearbeiten erreichen Sie auch über das Menü des Ereignisses, siehe [Ein Ereignis bearbeiten]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}). Fehlt Ihnen die Rolle, fehlt die Schaltfläche. Alle Rechte stehen in [Status und Rechte eines Ereignisses]({{< relref "/docs/user/reference/ereignis/status-und-rechte" >}}).

## Untergeordnete Ereignisse

Ein untergeordnetes Ereignis steht eingerückt unter seinem Hauptereignis, mit einem blauen Strich am linken Rand. Die Liste zeigt zwei Ebenen. Ein untergeordnetes Ereignis, dessen Hauptereignis gelöscht wurde, steht wieder auf oberster Ebene.

![Die Ereignisliste: unter dem Kantonalen Führungsorgan stehen drei untergeordnete Ereignisse](/images/docs/ereignis/ereignisliste-hierarchie.webp)
