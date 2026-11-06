---
title: "Personen bei der Triage erfassen"
description: "Die Änderung der Personenzahlen erfassen und eine Erfassung korrigieren."
weight: 20
---
Sie erfassen im Schritt **Personen** nur, was die Meldung **Neues** sagt. Die Personenübersicht rechnet daraus die Stände. Warum das so ist, steht in [Personen- und Mittelzählung]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}}).

## Personen erfassen

1. Öffnen Sie die Meldung in der **Triage** und gehen Sie zum Schritt **Personen**.
2. Stellen Sie je Kategorie die Änderung ein, mit den Knöpfen **+** und **−** oder durch Eintippen.
3. Prüfen Sie rechts die Vorschau der Änderung.
4. Klicken Sie auf **Weiter**. Erst jetzt wird gespeichert.

![Der Schritt Personen: drei Verletzte erfasst, rechts die Vorschau der Änderung](/images/docs/triage/triage-3-personen.webp)

## Beispiele

| Die Meldung sagt | Sie erfassen |
|---|---|
| Die Sanität meldet drei weitere Leichtverletzte. | Verletzte `+3` |
| Eine vermisste Person wurde gefunden, sie ist verletzt. | Vermisste `−1`, Verletzte `+1` |
| Zwei Personen wurden tot geborgen. | Tote `+2` |

Erfassen Sie nicht den Gesamtstand. Den Gesamtstand zeigt die [Personenübersicht]({{< relref "/docs/user/reference/triage/personenkategorien" >}}).

## Eine Erfassung korrigieren

1. Wählen Sie die bereits triagierte Meldung und klicken Sie auf **Triage anpassen**.
2. Öffnen Sie den Schritt **Personen**. Die Werte der früheren Erfassung stehen schon im Zähler.
3. Ändern Sie den Wert, bei einer Rücknahme auf 0, und klicken Sie auf **Weiter**.
4. Schliessen Sie die Triage ab.

## Hinweise

- Der Zähler lässt sich nicht kleiner stellen, als der aktuelle Stand zulässt. Ein Stand unter 0 ist nicht möglich.
- Betrifft die Meldung keine Personen, lassen Sie alle Zähler bei 0 und klicken Sie auf **Weiter**.
- Fehlerhinweise erscheinen im Schritt selbst, ohne dass Ihre Eingaben verloren gehen.
