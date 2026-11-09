---
title: "Von der Meldung auf die Karte: die neue Nachrichtenkarte"
date: 2026-11-17
draft: true
tags: ["nachrichtenkarte", "triage", "neue-funktion"]
summary: "Die analoge Nachrichtenkarte bleibt, ihre Führung wird leichter: In sitrep zeichnen Sie Meldung für Meldung zuerst digital ein, korrigieren Fehler dort und übertragen den geprüften Stand auf die Karte. Die Lage lässt sich zu jedem Zeitpunkt zurückspulen."
cover: "images/nachrichtenkarte-arbeitsplatz.webp"
---
Zwischen zwei Rapports sieht der Stab nur eines: die Karte an der Wand. Wer vorbeigeht, will auf einen Blick wissen, was gilt. Ist sie auf dem Stand der letzten Meldungen, oder hängt noch die Lage von vor einer Stunde da?

Das Problem kennt jeder Stab, der die Karte von Hand führt. Der BABS-Behelf «Einsatz Lage» nennt die **Nachrichtenkarte** ein «permanentes Arbeitsinstrument zur laufenden Erfassung und Auswertung des relevanten Meldeflusses». Klassisch führt sie ein Nachrichtenkartenführer auf Folie und wechselt sie von Zeit zu Zeit, damit sie lesbar bleibt. Dabei muss er alles, was weiter gilt, auf die neue Folie übertragen. Das kostet Zeit und Nerven und geschieht oft zu spät oder gar nicht. Das Lagebild leidet: Es wird für den Stab schwerer verständlich und lesbar.

Hier hilft die neue **Nachrichtenkarte** in [sitrep]({{< relref "/funktionen" >}}), der Open-Source-Software für die elektronische Lagedarstellung in Führungsstäben. Sie ersetzt die Karte an der Wand nicht, sondern erleichtert ihre Führung. Und sie ist die logische Weiterentwicklung der [neuen Triage]({{< relref "/blog/2026-11-triage-personen-mittelubersicht" >}}).

## Dieselbe Logik wie die Triage

Die Nachrichtenkarte ist genauso aufgebaut wie die Triage. Dort bearbeiten Sie Meldung für Meldung, die älteste zuerst, und legen fest, wer sie erhält. Weisen Sie eine Meldung der Nachrichtenkarte zu, landet sie links im Meldungsstapel. Er ist die Inbox der Nachrichtenkarte, eine To-do-Liste der Meldungen, die noch gezeichnet werden müssen. Dort gilt dasselbe wie in der Triage: Meldung wählen, einzeichnen, abschliessen, dann kommt die nächste. Wer die Triage kennt, kann deshalb auch die Nachrichtenkarte führen. Und das ganz ohne Meldezettel, der zur Kartenführung weitergereicht werden müsste.

![Der Arbeitsplatz der Nachrichtenkarte: links die Meldungen, die noch auf die Karte gehören, rechts die gewählte Meldung und die Karte](images/nachrichtenkarte-arbeitsplatz.webp)

## Was Sie davon haben

- **Das Übertragen wird einfacher.** Die Liste zeigt, was noch auf die Karte gehört. Was digital schon eingezeichnet ist, zeichnen Sie auf die analoge Karte ab, statt es erst im Journal zusammenzusuchen. Das spart Zeit und Nerven, und es geschieht eher rechtzeitig.
- **Eine doppelte Kontrolle.** Fehler lassen sich digital schnell korrigieren, bevor sie von Hand gezeichnet werden. Das Übertragen ist zugleich ein zweiter Blick auf die Meldung.
- **Jedes Zeichen hat eine Herkunft.** Jedes Objekt gehört zu einer Meldung. Die Frage «Woher kommt dieses Zeichen?» führt direkt zur Meldung zurück, und die Karte hebt hervor, was eine Meldung verändert hat: grün hinzugefügt, hellblau geändert, hellrot entfernt.
- **Der Film zum Zurückspulen.** Eine Zeichnung gilt ab der **Zeit der Meldung**. Im Lagebild lässt sich die Karte deshalb entlang des Einsatzes abspielen, und jeder frühere Stand ist abrufbar: für Rapport, Übergabe und Nachbesprechung.

![Das Lagebild auf einem früheren Zeitpunkt: nur die Objekte, die bis dahin gezeichnet waren](images/lagebild-zeitstrahl-frueher.webp)

![Eine eingezeichnete Meldung: ihre Änderungen sind auf der Karte hervorgehoben](images/nachrichtenkarte-aendern.webp)

## Die analoge Karte bleibt

sitrep will die manuelle Nachrichtenkarte nicht ablösen. Die Karte an der Wand bleibt eine Rückfallebene und für den Stab ein Orientierungspunkt, am Rapport und dazwischen. sitrep erleichtert es, sie zu erstellen und aktuell zu halten.

## Und das Lagebild?

Für Karten, die nicht aus Meldungen entstehen, etwa eine Führungskarte, legen Sie im Lagebild eigene Layer an. Die Nachrichtenkarte selbst entsteht nur über Meldungen und bleibt so nachvollziehbar.

## Schneller zur Lage

Jeder Stab führt eine Nachrichtenkarte. Mit sitrep führen Sie sie effizienter:

- **Schneller von der Meldung zur Karte.** Die Meldung liegt digital vor und wird direkt eingezeichnet, ohne Zettel und ohne Suchen im Journal. Die Zeit von der Erfassung bis zum Einzeichnen sinkt, und die Karte ist früher auf dem Stand der Meldungen.
- **Bessere Übersicht.** Die Karte bleibt lesbar, weil Fehler früh korrigiert werden und jedes Zeichen zu seiner Meldung führt. Frühere Stände rufen Sie jederzeit im Lagebild ab.

## Ausprobieren

**Wollen auch Sie Ihren Stab optimieren? Probieren Sie sitrep aus.** Erfassen Sie auf [demo.sitrep.ch](https://demo.sitrep.ch) eine Meldung, weisen Sie sie der Nachrichtenkarte zu und zeichnen Sie sie ein. Das Tutorial [Ihre erste Nachrichtenkarte]({{< relref "/docs/user/tutorials/lagebild/erste-nachrichtenkarte" >}}) führt Sie Schritt für Schritt durch.

Jede Meldung, die Sie weiter von Hand übertragen, kostet Zeit, die sitrep Ihnen spart, und hält die Karte länger auf einem alten Stand. Probieren Sie es in Ihrer nächsten Stabsübung aus und sehen Sie selbst, wie viel schneller die Lage auf der Karte steht. Wenn Sie Fragen haben oder sitrep in Ihrem Stab einführen möchten, schreiben Sie uns an [info@sitrep.ch](mailto:info@sitrep.ch).
