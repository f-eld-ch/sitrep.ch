---
title: "Nachrichtenkarte"
description: "Aufbau der Nachrichtenkarte, Status der Meldungen, Zeitstrahl und Objektangaben."
weight: 10
---
Die Nachrichtenkarte ist der Arbeitsplatz für die Karte. Sie öffnen sie über **Nachrichtenkarte** im Einsatzjournal. Das Lagebild (**Lagebild** in der Navigation) zeigt dieselbe Karte als Überblick mit Zeitstrahl.

## Aufbau des Arbeitsplatzes

- **Links:** die Meldungen, die in der Triage dem Ressort Nachrichtenkarte zugewiesen und triagiert wurden. Auf kleinen Bildschirmen füllt die Liste die Seite, bis Sie eine Meldung wählen.
- **Rechts oben:** die gewählte Meldung und die Aktion **Abschliessen** beziehungsweise **Ändern**.
- **Rechts unten:** die Karte.

<!-- Screenshot: nachrichtenkarte-arbeitsplatz.webp – Arbeitsplatz mit Meldungsliste, Meldung und Karte -->

## Schaltflächen und Marken

| Element | Bedeutung |
|---|---|
| Zeige ungezeichnete (n) / Zeige alle | Filter der Liste. Standard: nur Meldungen, die noch einzuzeichnen sind. |
| Abschliessen | Markiert die Meldung als eingezeichnet |
| Gezeichnet | Die Meldung ist eingezeichnet und gesperrt |
| Ändern / Fertig | Entsperrt die Zeichnung einer eingezeichneten Meldung beziehungsweise sperrt sie wieder |
| Meldung öffnen | Öffnet die Meldung |
| Diese Meldung | Hebt die Änderungen der gewählten Meldung auf der Karte hervor |
| Wiederherstellen | Holt ein Objekt zurück, das mit dieser Meldung entfernt wurde |

Hervorhebung: grün hinzugefügt, hellblau geändert, hellrot entfernt.

## Status einer Meldung

| Status | Bedeutung |
|---|---|
| noch einzuzeichnen | Triagiert, dem Ressort Nachrichtenkarte zugewiesen, noch nicht abgeschlossen |
| Gezeichnet | Abgeschlossen, Zeichnung gesperrt |

## Zeitstrahl im Lagebild

Im Lagebild zeigt die Karte den Stand zu einem Zeitpunkt.

| Element | Bedeutung |
|---|---|
| Live | Aktueller Stand der Karte |
| Stand HH:MM | Stand der Karte nach der gewählten Meldung |
| Vorherige Meldung / Nächste Meldung | Springt von Meldung zu Meldung |
| Zeitpunkt im Einsatzverlauf | Schieberegler über den ganzen Einsatz |

Ausser auf **Live** ist die Karte nur lesbar.

![Das Lagebild mit dem Zeitstrahl am unteren Rand der Karte](/images/docs/nachrichtenkarte/lagebild-zeitstrahl.webp)

## Objektangaben

Je nach Signatur stehen diese Felder zur Verfügung:

| Feld | Inhalt |
|---|---|
| Nähere Kennzeichnung | Kennzeichnung des Objekts |
| Ortsbezeichnung | Ort |
| Zusatzangaben | Weitere Angaben |
| Beschreibung / Details | Freitext |
| Anzahl Personen | Zahl der Personen |
| Gefahrennummer | Kemler-Zahl |
| Stoffnummer | vierstellige UN-Nummer |
| Stoffbezeichnung | Name des Stoffs |
| Gültig ab | Zeitpunkt, ab dem die Änderung gilt |

Mit **Signatur fixieren** und **Fixierte Signatur lösen** sperren und entsperren Sie die Lage einer Signatur.

## Einschränkungen

- Einsätze ohne Nachrichtenkarte zeigen «Dieser Einsatz hat keine Nachrichtenkarte».
- In abgeschlossenen Ereignissen sind **Abschliessen** und **Ändern** nicht möglich.
- Nicht gespeicherte Objekte gehen verloren, wenn Sie die Seite verlassen. sitrep fragt vorher nach.

## Siehe auch

- [Eine Meldung auf der Nachrichtenkarte einzeichnen]({{< relref "/docs/user/how-to/nachrichtenkarte/nachrichtenkarte-zeichnen" >}})
- [Nachrichtenkarte und Zeit]({{< relref "/docs/user/explanation/nachrichtenkarte/nachrichtenkarte-und-zeit" >}})
