---
title: "Globale Rollen verwalten"
description: "Globale Rollen vergeben und entziehen und den ersten Systemadministrator festlegen."
weight: 30
---
Diese Anleitung zeigt, wie Sie globale Rollen vergeben und entziehen. Sie brauchen dafür die Rolle Systemadministrator. Was die Rollen können, steht in der [Referenz]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).

Globale Rollen verwalten Sie unter **Administration → Zugangskontrolle → Globale Rollen**.

## Eine globale Rolle vergeben

1. Öffnen Sie **Administration → Zugangskontrolle → Globale Rollen**.
2. Wählen Sie unter **Rolle vergeben** den Benutzer aus und wählen Sie **Gruppenadministrator** oder **Systemadministrator**.
3. Klicken Sie auf **Vergeben**.

Der Benutzer erscheint sofort unter **Aktuelle Inhaber**.

## Eine globale Rolle entziehen

1. Suchen Sie den Benutzer unter **Aktuelle Inhaber**.
2. Klicken Sie neben dem Eintrag auf **Entziehen** und bestätigen Sie.

> **Hinweis:** Der letzte Systemadministrator kann nicht entzogen werden. Machen Sie zuerst einen anderen Benutzer zum Systemadministrator.

## Wenn niemand mehr Systemadministrator ist

Wenn Sie sitrep betreiben und sich ausgesperrt haben, hilft die Kommandozeile. Das beschreibt die Anleitung [Zugriff per Kommandozeile verwalten]({{< relref "/docs/admin/how-to/zugriff-per-kommandozeile" >}}) im Bereich Administration.
