---
title: "Im Lagebild einen eigenen Layer zeichnen"
description: "Einen eigenen Layer anlegen, frei zeichnen und den Zeitpunkt setzen."
weight: 30
---
Im Lagebild zeichnen Sie frei, ohne Meldung, zum Beispiel eine Führungskarte. Wann das Lagebild und wann die Nachrichtenkarte der richtige Ort ist, erklärt [Lagebild und Nachrichtenkarte]({{< relref "/docs/user/explanation/lagebild/lagebild-und-nachrichtenkarte" >}}).

## Einen Layer anlegen

1. Öffnen Sie **Lagebild**.
2. Öffnen Sie das Layer-Menü am rechten Kartenrand.
3. Klicken Sie auf **Layer hinzufügen** und geben Sie einen **Layer-Namen** ein, zum Beispiel `Führung`.

Der Layer erscheint unter **Zeichnungs-Layer**. Wählen Sie ihn aus, um darauf zu zeichnen.

![Das Layer-Menü im Lagebild: Zeichnungs-Layer mit Nachrichtenkarte und Lage, darunter das Feld für den Namen eines neuen Layers](/images/docs/lagebild/lagebild-layer-menue.webp)

Der Layer **Nachrichtenkarte** ist hier nur lesbar und trägt den Hinweis «Wird über Meldungen gezeichnet». Auf ihm zeichnen Sie nur in der [Nachrichtenkarte]({{< relref "/docs/user/how-to/lagebild/nachrichtenkarte-zeichnen" >}}).

## Frei zeichnen

1. Wählen Sie Ihren Layer.
2. Zeichnen Sie mit den Zeichenwerkzeugen am rechten Kartenrand Objekte auf die Karte.
3. Setzen Sie bei einem neuen Objekt den **Zeitpunkt** (**Gültig ab**), ab dem es gelten soll. Standard ist jetzt.
4. Speichern Sie das Objekt. Neue Objekte werden erst mit **Speichern** angelegt. Nicht gespeicherte Objekte gehen verloren, wenn Sie die Seite verlassen. sitrep fragt vorher nach.

Bei einer späteren Änderung an einem Objekt steht ebenfalls **Gültig ab**: «Die Änderung gilt ab diesem Zeitpunkt auf dem Zeitstrahl.»

## Den Verlauf ansehen

Mit dem Zeitstrahl unten auf der Karte gehen Sie durch den Einsatz. Auf **Live** sehen Sie den aktuellen Stand. Auf allen anderen Zeitpunkten ist die Karte nur lesbar.

## Einen WMS-Layer einblenden

1. Klicken Sie im Layer-Menü auf **WMS-Layer hinzufügen**.
2. Wählen Sie einen **WMS-Server** oder tragen Sie die URL eines **benutzerdefinierten Servers** ein.
3. Klicken Sie auf **Layer abrufen** und wählen Sie den **Layer**.

Der Server muss die Projektion EPSG:3857 unterstützen. Sonst meldet sitrep «Keine kompatiblen Layers gefunden».

## Siehe auch

- [Nachrichtenkarte]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}}), mit Zeitstrahl und Objektangaben
