---
title: "Gruppen verwalten"
description: "Gruppen erstellen, Mitglieder hinzufügen und entfernen und Gruppen archivieren."
weight: 40
---
Mit Gruppen verwalten Sie den Zugriff für mehrere Benutzer an einer Stelle. Diese Anleitung zeigt, wie Sie Gruppen erstellen, ihre Mitglieder pflegen und sie archivieren. Sie brauchen dafür die Rolle Gruppenadministrator oder Systemadministrator. Wie Gruppen zusammen mit Ereignissen wirken, steht im Hintergrundartikel [Wie die Zugriffssteuerung gedacht ist]({{< relref "/docs/user/explanation/zugriffssteuerung" >}}).

Gruppen verwalten Sie unter **Administration → Zugangskontrolle → Gruppen**.

## Eine Gruppe erstellen

1. Klicken Sie auf **Neue Gruppe**.
2. Geben Sie einen Namen ein (Pflicht) und optional eine kurze Beschreibung des Zwecks.
3. Klicken Sie auf **Erstellen**.

## Mitglieder hinzufügen

1. Öffnen Sie die Gruppe mit einem Klick auf ihren Namen.
2. Suchen Sie unter **Mitglieder hinzufügen** nach Name, E-Mail oder Kennung.
3. Wählen Sie die Benutzer aus und klicken Sie auf **Hinzufügen**.

## Mitglieder entfernen

1. Öffnen Sie die Gruppe.
2. Klicken Sie beim Mitglied auf **Aus Gruppe entfernen**.

Das Mitglied verliert den Zugriff, den es über die Gruppe hatte. Eine direkte Berechtigung auf einem Ereignis bleibt bestehen.

## Eine Gruppe archivieren

Eine archivierte Gruppe ist schreibgeschützt und kann keine neuen Berechtigungen auf Ereignissen erhalten. Bestehende Berechtigungen der Gruppe zählen danach bei Zugriffsentscheiden nicht mehr.

> Eine Gruppe lässt sich nicht archivieren, solange Berechtigungen auf Ereignissen sie noch verwenden. Entfernen Sie zuerst diese Berechtigungen.

1. Öffnen Sie die Gruppe.
2. Klicken Sie auf **Gruppe archivieren** und bestätigen Sie mit **Archivierung bestätigen**.
