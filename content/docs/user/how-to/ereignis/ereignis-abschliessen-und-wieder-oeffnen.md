---
title: "Ein Ereignis abschliessen und wieder öffnen"
description: "Ein Ereignis beenden und bei Bedarf wieder öffnen."
weight: 40
---
Ist ein Ereignis vorbei, schliessen Sie es. Sie brauchen dafür die Rolle **Manager** oder **Besitzer**. Bei einem Ereignis mit **Offenem Zugriff** darf jeder angemeldete Benutzer schliessen und öffnen.

## Ein Ereignis schliessen

1. Öffnen Sie die **Ereignisse**.
2. Klicken Sie beim Ereignis auf **schliessen**.

sitrep schliesst das Ereignis sofort und fragt nicht nach. Das Ereignis verschwindet aus der Liste, weil geschlossene Ereignisse standardmässig verborgen sind.

## Geschlossene Ereignisse anzeigen

Klicken Sie auf **Zeige geschlossene**. Mit **Verstecke geschlossene** blenden Sie sie wieder aus. Ein geschlossenes Ereignis hat einen gelben Hintergrund und zeigt unter **Geschlossen** den Zeitpunkt.

![Die Karte eines geschlossenen Ereignisses mit den Schaltflächen eintreten, löschen und öffnen](/images/docs/ereignis/ereignis-karte-geschlossen.webp)

## Was ein geschlossenes Ereignis nicht mehr kann

Ein geschlossenes Ereignis lässt sich weiter ansehen: Mit **eintreten** öffnen Sie es und lesen Journal, Personen, Mittel und Karte. Verändern lässt sich nichts mehr:

- Meldungen erfassen und korrigieren,
- Meldungen triagieren,
- Personen und Mittel führen,
- auf der Nachrichtenkarte zeichnen,
- das Ereignis selbst bearbeiten.

![Der Editor eines geschlossenen Ereignisses mit dem Hinweis, dass Bearbeiten nicht möglich ist](/images/docs/ereignis/ereignis-geschlossen-hinweis.webp)

sitrep meldet: «Dieses Ereignis ist geschlossen. Bearbeiten ist derzeit nicht möglich.» In der Triage heisst es: «Dieses Ereignis ist abgeschlossen. Triage ist nicht mehr möglich.»

## Ein Ereignis wieder öffnen

1. Klicken Sie auf **Zeige geschlossene**.
2. Klicken Sie beim Ereignis auf **öffnen**.

Das Ereignis ist wieder offen, mit allen Meldungen, Personen, Mitteln und der Karte wie beim Schliessen. Schliessen und Öffnen können Sie beliebig oft wiederholen.

## Automatisch schliessen

Der Betrieb kann einstellen, dass Ereignisse nach einer bestimmten Zahl von Tagen automatisch geschlossen werden. Standardmässig ist das ausgeschaltet. Die Einstellung steht in der [Konfiguration]({{< relref "/docs/admin/reference/konfiguration" >}}).

## Ein geschlossenes Ereignis löschen

Nur ein geschlossenes Ereignis lässt sich löschen: [Ein Ereignis löschen]({{< relref "/docs/user/how-to/ereignis/ereignis-loeschen" >}}).
