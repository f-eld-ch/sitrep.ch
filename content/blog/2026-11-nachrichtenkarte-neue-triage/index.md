---
title: "Von der Meldung auf die Karte: die neue Nachrichtenkarte"
date: 2026-11-12
tags: ["nachrichtenkarte", "triage", "neue-funktion"]
summary: "Die analoge Nachrichtenkarte bleibt, ihre Führung wird leichter: In sitrep zeichnen Sie Meldung für Meldung zuerst digital ein und übertragen den geprüften Stand auf die Karte. Die Lage lässt sich zu jedem Zeitpunkt zurückspulen."
cover: "images/nachrichtenkarte-arbeitsplatz.webp"
---
Zwischen zwei Rapports sieht der Stab vor allem eines: die Karte an der Wand. Wer vorbeigeht, will auf einen Blick wissen, was gilt. Ist sie auf dem Stand der letzten Meldungen, oder hängt noch die Lage von vor einer Stunde da?

Das Problem kennt jeder Stab, der die Karte von Hand führt. Der BABS-Behelf «Einsatz Lage» nennt die **Nachrichtenkarte** ein «permanentes Arbeitsinstrument zur laufenden Erfassung und Auswertung des relevanten Meldeflusses». Klassisch führt sie ein Nachrichtenkartenführer auf Folie und wechselt sie von Zeit zu Zeit, damit sie lesbar bleibt. Dabei muss er alles, was weiter gilt, auf die neue Folie übertragen. Das kostet Zeit und geschieht oft zu spät oder gar nicht. Die Karte wird für den Stab schwerer verständlich und lesbar.

Hier hilft die neue **Nachrichtenkarte** in [sitrep]({{< relref "/funktionen" >}}), der Open-Source-Software für die elektronische Lagedarstellung in Führungsstäben. Und sie ist die logische Weiterentwicklung der [neuen Triage]({{< relref "/blog/2026-11-triage-personen-mittelubersicht" >}}).

## Die analoge Karte bleibt, die digitale kommt dazu

sitrep will die analoge Nachrichtenkarte nicht ablösen. Die Karte an der Wand bleibt eine Rückfallebene und für den Stab ein Orientierungspunkt, am Rapport und dazwischen. sitrep erleichtert es, sie zu erstellen und aktuell zu halten.

Neu steht die Karte zusätzlich jedem im Stab digital zur Verfügung: Wer sie öffnet, kann hineinzoomen und zu jedem Symbol die zugehörige Meldung lesen. Die Nachrichtenkarte entsteht dabei nur über Meldungen und bleibt so nachvollziehbar.

## Dieselbe Logik wie die Triage

Die Triage bearbeitet Meldung für Meldung, die älteste zuerst, und legt fest, wer sie erhält. Die Nachrichtenkarte ist genauso aufgebaut. Weisen Sie eine Meldung der Nachrichtenkarte zu, landet sie links im Meldungsstapel, der Liste der Meldungen, die noch gezeichnet werden müssen. Dort gilt dasselbe wie in der Triage: Meldung wählen, einzeichnen, abschliessen, dann kommt die nächste. Wer die Triage kennt, kann deshalb auch die Nachrichtenkarte führen. Ein Meldezettel, der zur Kartenführung weitergereicht werden müsste, ist nicht nötig.

![Der Arbeitsplatz der Nachrichtenkarte: links die Meldungen, die noch auf die Karte gehören, rechts die gewählte Meldung und die Karte](images/nachrichtenkarte-arbeitsplatz.webp)

## Was Sie davon haben

- **Das Übertragen wird einfacher.** Die Liste zeigt, was noch auf die Karte gehört. Was digital schon eingezeichnet ist, zeichnen Sie auf die analoge Karte ab, statt es erst im Journal zusammenzusuchen. Das spart Zeit, und es geschieht eher rechtzeitig.
- **Eine doppelte Kontrolle.** Fehler lassen sich digital schnell korrigieren, bevor sie von Hand gezeichnet werden. Das Übertragen ist zugleich ein zweiter Blick auf die Meldung.
- **Jedes Zeichen hat eine Herkunft.** Jedes Objekt gehört zu einer Meldung. Die Frage «Woher kommt dieses Zeichen?» führt direkt zur Meldung zurück, und die Karte hebt hervor, was eine Meldung verändert hat: grün hinzugefügt, hellblau geändert, hellrot entfernt.
- **Der Film zum Zurückspulen.** Eine Zeichnung gilt ab der **Zeit der Meldung**. Im Lagebild lässt sich die Karte deshalb entlang des Einsatzes abspielen, und jeder frühere Stand ist abrufbar: für Rapport, Übergabe und Nachbesprechung.
- **Keine Meldung bleibt liegen.** Jede Meldung durchläuft denselben Ablauf: erfassen, triagieren, einzeichnen, abschliessen. Der Meldungsstapel zeigt jederzeit, was noch fehlt.

![Eine eingezeichnete Meldung: ihre Änderungen sind auf der Karte hervorgehoben](images/nachrichtenkarte-aendern.webp)

![Das Lagebild auf einem früheren Zeitpunkt: nur die Objekte, die bis dahin gezeichnet waren](images/lagebild-zeitstrahl-frueher.webp)

## Ausprobieren

Erfassen Sie auf [demo.sitrep.ch](https://demo.sitrep.ch) eine Meldung, weisen Sie sie der Nachrichtenkarte zu und zeichnen Sie sie ein. Das Tutorial [Ihre erste Nachrichtenkarte]({{< relref "/docs/user/tutorials/lagebild/erste-nachrichtenkarte" >}}) führt Sie Schritt für Schritt durch.

Probieren Sie es in Ihrer nächsten Stabsübung aus und prüfen Sie, wie schnell die Lage auf der Karte steht. Wenn Sie Fragen haben oder sitrep in Ihrem Stab einführen möchten, schreiben Sie uns an [info@sitrep.ch](mailto:info@sitrep.ch).
