---
title: "Triage-Ansicht und Schritte"
description: "Aufbau der Triage-Ansicht, die Schritte mit ihren Feldern, Status und Tastenkürzel."
weight: 30
---
Diese Seite beschreibt die Triage-Ansicht. Sie öffnen sie über **Triage** im Bereich Einsatzjournal. Wie Sie vorgehen, steht in der Anleitung [Eine Meldung triagieren]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}).

![Die Triage-Ansicht: Meldungsliste links, gewählte Meldung und Schrittleiste rechts, unten Benötigt mehr Informationen, Meldezettel und Weiter](/images/docs/triage/triage-1-meldung.webp)

## Aufbau

- **Meldungsliste** mit den Filtern «Nicht triagiert», «Schlüsselmeldungen» und «Meine».
- **Triage-Bereich** mit der gewählten Meldung oben, der Schrittleiste und dem Inhalt des Schritts.
- **Fusszeile** mit **Zurück**, **Weiter**, dem Druck des Meldezettels und im letzten Schritt **Triage abschliessen**.

Die Schrittleiste lässt sich anklicken. Sie können zu jedem Schritt springen.

## Schritte

| Schritt | Wann sichtbar | Inhalt |
|---|---|---|
| Meldung | nur bei noch nicht triagierten Meldungen | Meldung überprüfen: Absender, Empfänger, Zeit und Inhalt. Hier steht auch **Benötigt mehr Informationen**. |
| Meldefluss | immer | **Schlüsselnachricht** ein- oder ausschalten und die Ressorts festlegen, die die Meldung erhalten |
| Personen | immer | Änderung je Kategorie erfassen |
| Mittel | immer | Mittel aufbieten, auswählen und ihren Status ändern |

Bei einer bereits triagierten Meldung öffnet sich zuerst eine Zusammenfassung mit Meldefluss, Personen und Mitteln. Mit **Triage anpassen** bearbeiten Sie sie.

### Meldefluss

- **Schlüsselnachricht:** Der Schalter setzt die Priorität auf «wichtig» und weist die Meldung allen Ressorts des Ereignisses zu. Schalten Sie ihn wieder aus, kehren die vorherigen Zuweisungen zurück.
- **Ressorts:** Jedes Ressort ist eine Marke mit Plus- oder Minusknopf. Ressorts, die die Meldung erhalten, tragen einen Minusknopf, die anderen einen Plusknopf.

Meldungen, die dem Ressort **Nachrichtenkarte** zugewiesen sind, erscheinen anschliessend in der [Nachrichtenkarte]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}}).

### Personen

Einen Zähler je Kategorie, rechts die Vorschau der Änderung. Siehe [Personenübersicht]({{< relref "/docs/user/reference/triage/personenkategorien" >}}). Die Änderungen werden gespeichert, sobald Sie den Schritt mit **Weiter** verlassen.

### Mittel

Liste der Mittel, die mit dieser Meldung verknüpft sind, Suchfeld **Mittel suchen…**, die Schaltfläche **Neues Mittel aufbieten** und ein Bereich **Abgelöst** mit Mitteln, die sich reaktivieren lassen. Siehe [Mittelübersicht und Mitteltabelle]({{< relref "/docs/user/reference/triage/mitteltabelle" >}}).

## Triage-Status einer Meldung

| Status | Bedeutung |
|---|---|
| pendent | Noch nicht triagiert |
| mehr Informationen benötigt | Rückfrage nötig, die Triage ist noch nicht abgeschlossen |
| triagiert | Triage abgeschlossen |
| zurückgesetzt | Die Triage wurde zurückgenommen, die Meldung ist wieder offen |

Sobald eine Meldung **triagiert** ist, lässt sich ihre Zeit nicht mehr ändern. Der Grund steht in [Nachrichtenkarte und Zeit]({{< relref "/docs/user/explanation/lagebild/nachrichtenkarte-und-zeit" >}}).

## Nach dem Abschliessen

sitrep zeigt «Triage gespeichert» mit der Nummer der Meldung. Von dort gehen Sie mit **Nächste offene Meldung (Nr. …)** zur nächsten Meldung oder mit **Triage anpassen** zurück. Sind alle Meldungen triagiert, erscheint «Alles triagiert!».

## Einschränkungen

- In einem abgeschlossenen Ereignis ist keine Triage mehr möglich.
- Die Nachrichtenzeit darf nicht mehr als fünf Minuten in der Zukunft liegen.
- Gibt es noch keine Meldung, zeigt die Ansicht einen Hinweis und einen Knopf zum Editor. Meldungen legen Sie im Editor an.

## Tastenkürzel

| Kürzel | Aktion |
|---|---|
| Ctrl + ↑ | Vorherige Meldung |
| Ctrl + ↓ | Nächste Meldung |
| Ctrl + ↵ | Nächster Schritt, im letzten Schritt Triage abschliessen |
| Esc | Auswahl aufheben |

Die Liste lässt sich in der Triage-Ansicht über das Tastatursymbol oben rechts öffnen.
