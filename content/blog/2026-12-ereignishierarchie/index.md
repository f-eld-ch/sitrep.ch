---
title: "Ereignishierarchie: die Lage aller Führungsstäbe auf einen Blick"
date: 2026-12-01
draft: true
tags: ["ereignisse", "fuehrungsstab"]
summary: "Mit der Ereignishierarchie sieht ein übergeordneter Führungsstab die Lage der unterstellten Stäbe, ohne Zahlen einzusammeln: Personen und Mittel addieren sich, und die Stäbe arbeiten weiter wie bisher."
cover: "images/ereignisliste-hierarchie.webp"
---
Ein Regionales oder Kantonales Führungsorgan führt den Einsatz nicht vor Ort. Es koordiniert die Bewältigung auf der übergeordneten Ebene und unterstützt die lokalen Einsatzkräfte. Dazu verteilt es die Mittel, die Gemeinden oder Regionen anfragen: Personal, Material, Fahrzeuge. Wohin es sie schickt, hängt davon ab, wo sie am dringendsten gebraucht werden.

Um das gut zu entscheiden, braucht der übergeordnete Stab viele Informationen: Wie viele Personen sind betroffen, welche Mittel sind wo im Einsatz, was ist noch frei? Diese Angaben liefern die unterstellten Führungsorgane, per Telefon, Mail oder Meldung. Das dauert lange und ist fehleranfällig: Zahlen werden abgetippt, zusammengezählt und sind veraltet, bevor sie ankommen. Dabei verlieren beide Seiten Zeit, die für den Einsatz fehlt.

Die **Ereignishierarchie** in [sitrep]({{< relref "/funktionen" >}}) erleichtert diese Arbeit und hilft, aktuellere Informationen zu haben. Jeder Stab führt sein Ereignis wie bisher, und der übergeordnete Stab sieht die Lage aller unterstellten Stäbe zusammengefasst. Das gilt für jede Hierarchie von Führungsstäben, etwa für ein Regionales Führungsorgan, dem mehrere Gemeindeführungsstäbe unterstehen, oder für das Kantonale Führungsorgan über den Regionen.

## Was Sie davon haben

- **Schneller zu aktuellen Informationen.** Die Zahlen stammen aus den Ereignissen der unterstellten Stäbe. Sobald dort eine Meldung erfasst und triagiert ist, erscheint sie beim übergeordneten Stab, ohne dass jemand nachfragen oder auf eine Meldung warten muss.
- **Eine Übersicht mit weniger Rückfragen.** Die Personenübersicht des übergeordneten Stabs addiert die Zahlen aller unterstellten Stäbe. Darunter stehen sie je Ereignis einzeln, und es ist sichtbar, woher eine Zahl kommt.
- **Die Mittel auf einen Blick.** Die Mittelübersicht zeigt die Mittel der unterstellten Stäbe als eigene Gruppen und rechnet sie in die Summen ein.
- **Die Nachrichtenkarten der unterstellten Stäbe.** Der übergeordnete Stab sieht auch deren Nachrichtenkarten und damit, was gezeichnet und gemeldet wurde, nicht nur die Zahlen.
- **Weniger Abtippen, weniger Fehler.** Die unterstellten Stäbe erfassen ihre Meldungen wie bisher in ihrem Ereignis. Der übergeordnete Stab muss die Zahlen nicht mehr zusammentragen, und sie stammen aus derselben Quelle.
- **Weniger Aufwand für die unterstellten Stäbe.** Sie müssen ihre Lage seltener gesondert melden, denn die Zahlen aus ihrem Ereignis sind für den übergeordneten Stab sichtbar.

![Die Personenübersicht des Kantonalen Führungsorgans mit den Gesamtzahlen und den Zahlen der Regionen](images/uebergeordnet-personen.webp)

## So richten Sie es ein

Jeder Stab führt sein eigenes Ereignis in sitrep. Der übergeordnete Stab eröffnet ein **übergeordnetes Ereignis** und ordnet ihm die Ereignisse der unterstellten Stäbe zu: beim Erstellen oder später im Formular über das Feld **Übergeordnetes Ereignis**. In der Ereignisliste stehen die unterstellten Ereignisse danach eingerückt darunter.

![Die Ereignisliste: unter dem Kantonalen Führungsorgan stehen die Ereignisse der Regionen](images/ereignisliste-hierarchie.webp)

## Die unterstellten Stäbe arbeiten weiter wie bisher

Jedes Ereignis bleibt ein eigenes Ereignis: mit eigenen Meldungen, eigenen Ressorts und eigenem Zugriff. Es wird auch einzeln geschlossen. Das Schliessen des übergeordneten Ereignisses ändert nichts an den unterstellten Ereignissen.

## Ausprobieren

Legen Sie auf [demo.sitrep.ch](https://demo.sitrep.ch) zwei Ereignisse an und wählen Sie bei einem davon im Feld **Übergeordnetes Ereignis** das andere. Schon sehen Sie die Zahlen beider Ereignisse beim übergeordneten Stab. Die Schritte zeigt die [Anleitung]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}), den Hintergrund erklärt der Artikel [Übergeordnete und untergeordnete Ereignisse]({{< relref "/docs/user/explanation/ereignis/uebergeordnete-und-untergeordnete-ereignisse" >}}).

Führen Sie einen übergeordneten Stab oder unterstehen Sie einem? Schreiben Sie uns an [info@sitrep.ch](mailto:info@sitrep.ch), wie Sie die Zusammenarbeit zwischen den Stäben heute organisieren und was Sie sich wünschen. Ihre Rückmeldungen prägen, wie wir die Hierarchie weiterentwickeln.
