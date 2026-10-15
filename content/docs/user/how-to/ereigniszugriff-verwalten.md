---
title: "Zugriff auf ein Ereignis verwalten"
description: "Den Zugriffsmodus eines Ereignisses wechseln und Berechtigungen erteilen, ändern und entziehen."
weight: 20
---
Diese Anleitung zeigt, wie Sie festlegen, wer ein Ereignis sehen und bearbeiten darf. Bei Ereignissen mit offenem Zugriff kann jeder angemeldete Benutzer die Einstellungen ändern. Bei eingeschränkten Ereignissen brauchen Sie die Rolle **Manager** oder **Besitzer**. Was die Rollen können, steht in der [Referenz]({{< relref "/docs/user/reference/zugriffssteuerung" >}}).

Öffnen Sie dazu die Seite **Ereigniszugriff** des Ereignisses (Adresse `/incident/<id>/access`).

## Den Zugriffsmodus wechseln

Wählen Sie unter **Zugriffsmodus** entweder **Offener Zugriff** oder **Eingeschränkt** und bestätigen Sie, wenn sitrep danach fragt.

> **Achtung:** Beim Wechsel auf **Eingeschränkt** verlieren alle Benutzer ohne ausdrückliche Berechtigung den Zugriff auf das Ereignis.

## Zugriff erteilen

1. Wählen Sie unter **Berechtigung hinzufügen**, ob Sie einer **Gruppe** oder einem **Benutzer** den Zugriff geben.
2. Suchen Sie die Gruppe oder den Benutzer nach Name.
3. Wählen Sie die Rolle: **Betrachter**, **Bearbeiter**, **Manager** oder **Besitzer**.
4. Klicken Sie auf **Berechtigen**.

Die Berechtigung erscheint sofort in der Tabelle.

**Allen Benutzern Zugriff geben:** Wählen Sie in der Tabelle die Zeile **Alle Benutzer** und weisen Sie eine Rolle zu. Jeder angemeldete Benutzer hat dann mindestens diese Rolle, auch wenn er nicht einzeln aufgeführt ist.

## Eine Rolle ändern

Wählen Sie in der Tabelle beim Benutzer oder bei der Gruppe in der Rollenauswahl die neue Rolle. Die Änderung gilt sofort.

## Zugriff entziehen

Klicken Sie bei der Berechtigung auf **Entfernen**. Ist das Ereignis eingeschränkt, verliert der Benutzer (oder verlieren die Mitglieder der Gruppe) den Zugriff sofort.

> Der letzte Besitzer kann nicht entfernt werden. Weisen Sie zuerst einem anderen Benutzer die Rolle Besitzer zu.
