---
title: "Ansichten des Einsatzjournals"
description: "Editor, Einsatzjournal, Triage und Nachrichtenkarte im Vergleich."
weight: 20
---
sitrep zeigt die Meldungen des Ereignisses in mehreren Ansichten. Jede hat einen Zweck.

| Ansicht | Zweck | Meldungen bearbeiten | Drucken |
|---|---|---|---|
| **Editor** | Meldungen erfassen und korrigieren, mit der Liste darunter | ja, solange nicht triagiert | Journal drucken, Meldezettel |
| **Einsatzjournal** | Alle Meldungen lesen und filtern | nein | nein |
| **Triage** | Meldungen auswerten: Meldefluss, Personen, Mittel | Meldung korrigieren im ersten Schritt | Meldezettel |
| **Nachrichtenkarte** (Menü Lagebild) | Meldungen einzeichnen | nein | nein |
| **Lagebild** | Karte ansehen, eigene Layer frei zeichnen | nein | Kartenexport |

## Einsatzjournal

Die Liste zeigt die neuesten Meldungen zuoberst. Pro Meldung stehen Absender, Empfänger, Zeit, Meldungs-Number, Priorität und Triage Status, darunter der Inhalt und die Ressorts als Marken.

Farben helfen beim Überblick: Meldungen, die noch nicht triagiert sind, sind gelb unterlegt, wichtige rot. Der Status steht immer auch als Text in der Meldung.

### Filter

| Filter | Werte |
|---|---|
| Triage-Status | alle, pendent, mehr Informationen benötigt, triagiert, zurückgesetzt |
| Priorität | alle, normal, wichtig |
| Ressort | alle, oder ein Ressort des Ereignisses |

Die gleichen Filter stehen in der Liste unter dem Editor.

![Das Einsatzjournal mit den Filtern oben und den Meldungen darunter](/images/docs/einsatzjournal/journal-uebersicht.webp)

## Journal drucken

Die gedruckte Tabelle hat die Spalten Zeit, Absender, Empfänger und Inhalt. Der Kopf zeigt den Titel, den Stand und die gesetzten Filter.

## Meldungsliste in Triage und Nachrichtenkarte

Triage und Nachrichtenkarte zeigen links eine Liste der Meldungen mit Filtern. Die Triage hat **Nicht triagiert**, **Schlüsselmeldungen** und **Meine**. Die Nachrichtenkarte zeigt nur Meldungen für das Ressort Nachrichtenkarte und hat den Filter **Zeige ungezeichnete** beziehungsweise **Zeige alle**.

## Siehe auch

- [Felder des Editors]({{< relref "/docs/user/reference/einsatzjournal/editor-felder" >}})
- [Triage-Ansicht und Schritte]({{< relref "/docs/user/reference/triage/triage-schritte" >}})
- [Nachrichtenkarte]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}})
