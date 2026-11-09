---
title: "Übergeordnete und untergeordnete Ereignisse"
description: "Wie ein Kantonales Führungsorgan die Ereignisse der Regionen in einem übergeordneten Ereignis zusammenführt."
weight: 20
---
sitrep kennt Ereignisse auf **zwei Ebenen**: ein **übergeordnetes** Ereignis (das Hauptereignis) und darunter **untergeordnete** Ereignisse. Die zweite Ebene ist dafür da, dass mehrere Führungsorgane je ihr eigenes Ereignis führen und ein übergeordnetes Organ trotzdem die ganze Lage sieht.

## Der Anwendungsfall

Bei einem Unwetter im Kanton führt jedes **Regionale Führungsorgan** (RFO) sein eigenes sitrep-Ereignis: mit eigenen Meldungen, eigener Triage, eigenen Ressorts, eigenen Personen und Mitteln und seiner eigenen Karte.

Das **Kantonale Führungsorgan** (KFO) eröffnet dazu das **übergeordnete** Ereignis. Jedes RFO-Ereignis wird ihm als untergeordnetes Ereignis zugeordnet. So führt das KFO die Ereignisse aller RFOs zusammen und sieht die Lage des Kantons, ohne dass die Regionen ihre Arbeit anders machen müssten.

![Die Ereignisliste: unter dem Kantonalen Führungsorgan stehen die Ereignisse der Regionen](/images/docs/ereignis/ereignisliste-hierarchie.webp)

## Was das übergeordnete Ereignis zusammenführt

- **Personen:** Die Personenübersicht des Hauptereignisses addiert die Zahlen aller untergeordneten Ereignisse. Darunter stehen sie je Ereignis einzeln unter **Untergeordnete Ereignisse**.
- **Mittel:** Die Mittelübersicht zeigt die Mittel der untergeordneten Ereignisse als eigene Gruppen, gekennzeichnet als «Untergeordnetes Ereignis», und rechnet sie in die Summen ein.
- **Karte:** Die Ebenen der untergeordneten Ereignisse erscheinen auf der Karte des Hauptereignisses.

![Die Personenübersicht des Kantonalen Führungsorgans mit den Gesamtzahlen und den untergeordneten Ereignissen](/images/docs/ereignis/uebergeordnet-personen.webp)

![Die Mittelübersicht des Kantonalen Führungsorgans mit den Mitteln der untergeordneten Ereignisse](/images/docs/ereignis/uebergeordnet-mittel.webp)

## Was jedes Ereignis für sich bleibt

Die Ereignisse sind keine Teile eines grossen Ereignisses, sondern eigene Ereignisse, die nur zusammengeführt werden:

- Jedes Ereignis hat seinen eigenen **Zugriff**. Wer ein Ereignis sehen und bearbeiten darf, bestimmt dessen Zugriffssteuerung, siehe [Zugriffssteuerung]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).
- Jedes Ereignis wird einzeln **geschlossen**, geöffnet und gelöscht. Das Schliessen oder Löschen des Hauptereignisses ändert nichts an den untergeordneten Ereignissen: Sie bleiben offen und mit ihm verknüpft, beziehungsweise stehen nach einem Löschen wieder auf oberster Ebene der Liste.
- Die **Ressorts** gelten je Ereignis.

## Warum nur zwei Ebenen

Zwei Ebenen reichen für die Aufteilung nach Regionen und halten die Zusammenführung überschaubar. Ein Ereignis ist deshalb entweder Hauptereignis oder untergeordnet, nie beides. Als Hauptereignis lassen sich nur offene Ereignisse wählen. Die Einzelheiten stehen in [Ein übergeordnetes Ereignis verknüpfen]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}).
