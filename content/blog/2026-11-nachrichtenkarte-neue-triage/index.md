---
title: "Meldungen einzeichnen mit der neuen Nachrichtenkarte"
date: 2026-11-17
draft: true
tags: ["nachrichtenkarte", "triage", "neue-funktion"]
summary: "Wer eine Meldung triagiert und der Nachrichtenkarte zuweist, findet sie danach im neuen Arbeitsplatz der Nachrichtenkarte: Meldung wählen, einzeichnen, abschliessen. Jede Zeichnung gilt ab der Zeit der Meldung."
cover: "images/nachrichtenkarte-arbeitsplatz.webp"
---
Der Artikel zur [neuen Triage]({{< relref "/blog/2026-11-triage-personen-mittelubersicht" >}}) hat gezeigt, wie Personen und Mittel beim Triagieren erfasst werden. Eine Frage blieb bewusst offen: Was gehört auf die Karte? Das ist die Aufgabe der Nachrichtenkarte.

## Von der Triage auf die Karte

Im Schritt **Meldefluss** der Triage weisen Sie eine Meldung dem Ressort **Nachrichtenkarte** zu. Damit steht sie im Arbeitsplatz der Nachrichtenkarte bereit. Sie öffnen ihn im Menü **Lagebild** über den Eintrag **Nachrichtenkarte**.

## Einzeichnen in wenigen Schritten

Links stehen die Meldungen für die Karte, rechts die gewählte Meldung und die Karte. sitrep wählt die älteste Meldung, die noch nicht eingezeichnet ist.

1. Zeichnen Sie ein, was die Meldung sagt: Objekte setzen, ändern oder entfernen.
2. Klicken Sie auf **Abschliessen**.
3. sitrep springt zur nächsten Meldung.

So geht keine Meldung vergessen: Die Liste zeigt, wie viele noch einzuzeichnen sind.

![Der Arbeitsplatz der Nachrichtenkarte: links die Meldungen, rechts die gewählte Meldung mit dem Knopf Abschliessen und die Karte](images/nachrichtenkarte-arbeitsplatz.webp)

## Jede Zeichnung hat eine Zeit

Was Sie einzeichnen, gilt ab der **Zeit der Meldung**, nicht ab dem Moment, in dem Sie zeichnen. Deshalb lässt sich die Karte im Lagebild entlang des Einsatzes abspielen: Sie sehen den Stand nach jeder Meldung. Damit die Zeichnungen nicht verrutschen, lässt sich die Zeit einer Meldung nach der Triage nicht mehr ändern.

![Das Lagebild auf einem früheren Zeitpunkt: nur die Objekte, die bis dahin gezeichnet waren](images/lagebild-zeitstrahl-frueher.webp)

Bei einer eingezeichneten Meldung zeigt die Karte, was sie verändert hat: grün ist hinzugefügt, hellblau geändert, hellrot entfernt. Ein entferntes Objekt lässt sich wiederherstellen.

![Eine eingezeichnete Meldung, die Änderungen sind auf der Karte hervorgehoben](images/nachrichtenkarte-aendern.webp)

## Nachrichtenkarte und Lagebild

Die Nachrichtenkarte ist ein eigener Layer, der nur über Meldungen gezeichnet wird. Im Lagebild ist er schreibgeschützt. Für Karten, die nicht aus Meldungen entstehen, etwa eine Führungskarte, legen Sie im Lagebild eigene Layer an und zeichnen frei.

## Ausprobieren

Testen Sie es auf [demo.sitrep.ch](https://demo.sitrep.ch). Eine Schritt-für-Schritt-Anleitung bietet das Tutorial [Ihre erste Nachrichtenkarte]({{< relref "/docs/user/tutorials/lagebild/erste-nachrichtenkarte" >}}). Fragen und Rückmeldungen nehmen wir gerne unter [info@sitrep.ch](mailto:info@sitrep.ch) entgegen.
