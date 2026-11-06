---
title: "Personenübersicht"
description: "Die fünf Personenkategorien, wie die Zahlen entstehen und wo sie angezeigt werden."
weight: 10
---
Die Personenübersicht zeigt, wie viele Personen im Ereignis betroffen sind. Die Zahlen entstehen ausschliesslich in der Triage: Sie erfassen im Schritt **Personen** die Änderung, die eine Meldung bringt. Anleitung: [Personen bei der Triage erfassen]({{< relref "/docs/user/how-to/triage/personen-erfassen" >}}).

Die Übersicht öffnen Sie über **Personenübersicht** in der Navigation des Ereignisses.

![Die Personenübersicht mit den fünf Kategorien und der Aufschlüsselung für das Ereignis, Beispielereignis «Unwetter Bergdorf – Murgang Dorfbach»](/images/docs/triage/personenuebersicht.webp)

## Kategorien

Die Reihenfolge ist in der Triage und in der Übersicht gleich.

| Kategorie | Bedeutung |
|---|---|
| Verletzte | Verletzte Personen |
| Vermisste | Personen, deren Verbleib unbekannt ist |
| Obdachlose | Personen ohne Unterkunft |
| Eingeschlossene | Personen, die sich nicht selbst befreien können |
| Tote | Tote Personen |

Jede Kategorie hat ein Signaturensymbol des BABS-Signaturensatzes, das in der Triage und in der Übersicht neben der Zahl erscheint.

## Wie die Zahlen berechnet werden

- Pro Meldung erfassen Sie eine **Änderung** (Delta), keinen Stand. Beispiel: `+3` bei Verletzte, `−1` bei Vermisste.
- Der Stand einer Kategorie ist die Summe aller Änderungen aller triagierten Meldungen.
- Der Stand einer Kategorie kann nie unter 0 fallen. In der Triage lässt sich die Änderung nur so weit verkleinern, dass der Stand 0 bleibt.
- Eine Änderung von 0 wird nicht gespeichert, ausser eine frühere Triage derselben Meldung hatte bereits Werte. Dann wird der alte Wert zurückgenommen.

## Aufbau der Seite

| Bereich | Inhalt |
|---|---|
| Gesamtzahlen | Summe über das Ereignis und alle untergeordneten Ereignisse |
| Dieses Ereignis | Die Zahlen des Ereignisses selbst |
| Untergeordnete Ereignisse | Je untergeordnetes Ereignis eine Karte mit dessen Zahlen |

Solange keine Meldung mit Personen triagiert wurde, zeigt die Seite «Keine Personen erfasst» und einen Knopf zur Triage.

## Siehe auch

- [Triage-Schritte]({{< relref "/docs/user/reference/triage/triage-schritte" >}})
- [Warum Änderungen statt Stände erfasst werden]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}})
