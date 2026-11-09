---
title: "Die Nachrichtenkarte leichter führen: erst digital, dann auf Folie"
date: 2026-11-17
draft: true
tags: ["nachrichtenkarte", "triage", "neue-funktion"]
summary: "Die analoge Nachrichtenkarte bleibt, ihre Führung wird leichter: In sitrep zeichnen Sie Meldung für Meldung zuerst digital ein, korrigieren Fehler dort und übertragen den geprüften Stand auf die Karte. Die Lage lässt sich zu jedem Zeitpunkt zurückspulen."
cover: "images/nachrichtenkarte-arbeitsplatz.webp"
---
**09:20 Uhr im Lagezentrum.** Der Stabschef schaut auf die Karte: *«Die Sperrung an der Dorfstrasse: Seit wann gilt sie, und welche Meldung hat sie ausgelöst?»*

Das Problem kennt jeder Stab, der die Karte von Hand führt. Der BABS-Behelf «Einsatz Lage» nennt die **Nachrichtenkarte** ein «permanentes Arbeitsinstrument zur laufenden Erfassung und Auswertung des relevanten Meldeflusses». Klassisch führt sie ein Nachrichtenkartenführer auf Folie und wechselt sie von Zeit zu Zeit, damit sie lesbar bleibt. Dabei muss er alles, was weiter gilt, auf die neue Folie übertragen. Das kostet Zeit und Nerven und geschieht oft zu spät oder gar nicht. Das Lagebild leidet: Es wird für den Stab schwerer verständlich und lesbar.

Hier hilft die neue **Nachrichtenkarte** in [sitrep]({{< relref "/funktionen" >}}), der Open-Source-Software für die Führungsunterstützung im Bevölkerungsschutz. Sie ersetzt die Karte an der Wand nicht, sondern erleichtert ihre Führung. Und sie ist die logische Weiterentwicklung der [neuen Triage]({{< relref "/blog/2026-11-triage-personen-mittelubersicht" >}}).

## Dieselbe Logik wie die Triage

Die Nachrichtenkarte ist genauso aufgebaut wie die Triage. Dort bearbeiten Sie Meldung für Meldung, die älteste zuerst, und legen fest, wer sie erhält. Weisen Sie eine Meldung der Nachrichtenkarte zu, landet sie in deren Arbeitsliste, und dort gilt dasselbe: Meldung wählen, einzeichnen, abschliessen, dann kommt die nächste. Wer die Triage kennt, kann deshalb auch die Nachrichtenkarte führen. Und das ganz ohne Meldezettel, der zur Kartenführung weitergereicht werden müsste.

![Der Arbeitsplatz der Nachrichtenkarte: links die Meldungen, die noch auf die Karte gehören, rechts die gewählte Meldung und die Karte](images/nachrichtenkarte-arbeitsplatz.webp)

## Was Sie davon haben

- **Das Übertragen wird einfacher.** Die Liste zeigt, was noch auf die Karte gehört. Was digital schon eingezeichnet ist, zeichnen Sie auf die analoge Karte ab, statt es erst im Journal zusammenzusuchen. Das spart Zeit und Nerven, und es geschieht eher rechtzeitig.
- **Eine doppelte Kontrolle.** Fehler lassen sich digital schnell korrigieren, bevor sie von Hand gezeichnet werden. Das Übertragen ist zugleich ein zweiter Blick auf die Meldung.
- **Jedes Zeichen hat eine Herkunft.** Jedes Objekt gehört zu einer Meldung. Die Frage des Stabschefs führt direkt zur Meldung zurück, und die Karte hebt hervor, was eine Meldung verändert hat: grün hinzugefügt, hellblau geändert, hellrot entfernt.
- **Der Film zum Zurückspulen.** Eine Zeichnung gilt ab der **Zeit der Meldung**. Im Lagebild lässt sich die Karte deshalb entlang des Einsatzes abspielen, und jeder frühere Stand ist abrufbar: für Rapport, Übergabe und Nachbesprechung.

![Das Lagebild auf einem früheren Zeitpunkt: nur die Objekte, die bis dahin gezeichnet waren](images/lagebild-zeitstrahl-frueher.webp)

![Eine eingezeichnete Meldung: ihre Änderungen sind auf der Karte hervorgehoben](images/nachrichtenkarte-aendern.webp)

## Die analoge Karte bleibt

sitrep will die manuelle Nachrichtenkarte nicht ablösen. Die Karte an der Wand bleibt eine Rückfallebene und für den Stab ein Orientierungspunkt, am Rapport und dazwischen. sitrep erleichtert es, sie zu erstellen und aktuell zu halten.

## Und das Lagebild?

Für Karten, die nicht aus Meldungen entstehen, etwa eine Führungskarte, legen Sie im Lagebild eigene Layer an. Die Nachrichtenkarte selbst entsteht nur über Meldungen und bleibt so nachvollziehbar.

## Ausprobieren

Testen Sie es auf [demo.sitrep.ch](https://demo.sitrep.ch). Wie es Schritt für Schritt geht, zeigt das Tutorial [Ihre erste Nachrichtenkarte]({{< relref "/docs/user/tutorials/lagebild/erste-nachrichtenkarte" >}}). Fragen und Rückmeldungen nehmen wir gerne unter [info@sitrep.ch](mailto:info@sitrep.ch) entgegen.
