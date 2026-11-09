---
title: "Der Lebenszyklus eines Ereignisses"
description: "Warum ein Ereignis offen, geschlossen und gelöscht sein kann und was sich umkehren lässt."
weight: 10
---
Ein **Ereignis** ist der Rahmen, in dem alles andere stattfindet: Meldungen, Triage, Personen, Mittel und die Karte gehören immer zu einem Ereignis. Es durchläuft drei Stationen.

## Offen

Solange ein Ereignis **offen** ist, arbeitet der Stab darin. Meldungen werden erfasst und triagiert, Personen und Mittel nachgeführt, die Karte wird gezeichnet. Name, Ort und Ressorts lassen sich ändern.

## Geschlossen

Ist der Einsatz vorbei, wird das Ereignis **geschlossen**. Es bleibt vollständig erhalten und lässt sich ansehen, aber nicht mehr verändern. So bleibt der Stand, wie er beim Abschluss war.

Das Schliessen ist ausdrücklich **umkehrbar**: Wer die Rolle Manager hat, kann das Ereignis jederzeit wieder öffnen. Der Gedanke dahinter ist, dass ein Ereignis zu früh geschlossen oder nachträglich noch gebraucht werden kann. Es geht dabei nichts verloren.

## Gelöscht

Löschen ist die letzte Station und bewusst schwerer zu erreichen als die anderen:

- Es geht nur bei einem **geschlossenen** Ereignis. Wer löschen will, muss es also erst abschliessen.
- Es ist dem **Besitzer** vorbehalten, auch wenn das Ereignis allen offen steht.
- Es lässt sich in sitrep **nicht rückgängig machen**.

Gelöscht heisst nicht, dass die Daten vernichtet werden: Die Daten eines gelöschten Ereignisses bleiben in der Datenbank archiviert. In sitrep selbst lässt es sich nicht wiederherstellen, das geht nur mit Zugriff auf die Datenbank. Fragen Sie in dem Fall die Administration.

Deshalb gilt im Alltag: Lassen Sie ein beendetes Ereignis **geschlossen**. Löschen Sie nur, wenn es wirklich weg soll, zum Beispiel bei einer Übung, die nicht aufbewahrt wird.

## Was der Betrieb zusätzlich einstellen kann

Die Administration kann sitrep so einstellen, dass Ereignisse **automatisch geschlossen** werden, wenn sie eine bestimmte Zahl von Tagen offen waren, und dass lange geschlossene Ereignisse **archiviert** werden. Beides ist standardmässig ausgeschaltet. Die Einstellungen stehen in der [Konfiguration]({{< relref "/docs/admin/reference/konfiguration" >}}).

## Wer was darf

Dass Schliessen, Wiederöffnen und Löschen verschiedene Rollen brauchen, ist Absicht: Bearbeiter führen das Ereignis, Manager beenden es und öffnen es wieder, nur der Besitzer löscht. Die Tabelle steht in [Status und Rechte eines Ereignisses]({{< relref "/docs/user/reference/ereignis/status-und-rechte" >}}). Warum die Zugriffssteuerung so gebaut ist, erklärt [Wie die Zugriffssteuerung gedacht ist]({{< relref "/docs/user/explanation/allgemein/zugriffssteuerung" >}}).
