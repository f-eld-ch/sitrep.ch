---
title: "Zugriff für ein Ereignis einrichten"
description: "Eine Gruppe anlegen, ein Ereignis einschränken und der Gruppe eine Rolle geben."
weight: 20
---
In diesem Tutorial richten Sie den Zugriff für ein Ereignis so ein, dass nur ein bestimmter Stab es bearbeiten kann. Sie legen eine Gruppe an, fügen Mitglieder hinzu, schränken das Ereignis ein und geben der Gruppe die Rolle Bearbeiter. Am Schluss prüfen Sie das Ergebnis.

Sie brauchen:

- eine laufende sitrep-Instanz, zum Beispiel aus dem Tutorial [sitrep mit Docker starten]({{< relref "/docs/admin/tutorials/docker-starten" >}}),
- die Rolle Gruppenadministrator oder Systemadministrator, um die Gruppe anzulegen,
- zwei Benutzer zum Ausprobieren,
- ein Ereignis, dessen Besitzer oder Manager Sie sind.

## 1. Eine Gruppe anlegen

1. Öffnen Sie **Administration → Zugangskontrolle → Gruppen**.
2. Klicken Sie auf **Neue Gruppe**.
3. Geben Sie den Namen `Stab` ein und klicken Sie auf **Erstellen**.

Die Gruppe `Stab` erscheint in der Liste.

## 2. Mitglieder hinzufügen

1. Öffnen Sie die Gruppe `Stab`.
2. Suchen Sie unter **Mitglieder hinzufügen** den ersten Ihrer beiden Benutzer.
3. Wählen Sie ihn aus und klicken Sie auf **Hinzufügen**.

Der Benutzer erscheint unter **Mitglieder**. Den zweiten Benutzer fügen Sie nicht hinzu: Er dient im letzten Schritt als Vergleich.

## 3. Das Ereignis einschränken

1. Öffnen Sie Ihr Ereignis und danach die Seite **Ereigniszugriff**.
2. Prüfen Sie den **Zugriffsmodus**. Steht dort schon **Eingeschränkt**, ist dieser Schritt erledigt. Das ist der Fall, wenn Ihre Administration den Standard so eingestellt hat oder keinen eingestellt hat.
3. Steht dort **Offener Zugriff**, wählen Sie **Eingeschränkt** und bestätigen Sie mit **Einschränkung bestätigen**.

Jetzt hat nur noch Zugriff, wer ausdrücklich berechtigt ist.

## 4. Der Gruppe eine Rolle geben

1. Wählen Sie unter **Berechtigung hinzufügen** die Option **Gruppe**.
2. Suchen Sie die Gruppe `Stab` und wählen Sie die Rolle **Bearbeiter**.
3. Klicken Sie auf **Berechtigen**.

Die Gruppe erscheint mit der Rolle Bearbeiter in der Tabelle.

## 5. Das Ergebnis prüfen

1. Melden Sie sich als Mitglied der Gruppe an. Das Ereignis ist sichtbar, und Sie können Journaleinträge erfassen.
2. Melden Sie sich als zweiter Benutzer an, der nicht in der Gruppe ist. Das Ereignis ist nicht zugänglich.

Sie haben den Zugriff für ein Ereignis auf eine Gruppe beschränkt. Wie Sie später Mitglieder wechseln oder Rollen ändern, steht in den Anleitungen [Gruppen verwalten]({{< relref "/docs/user/how-to/allgemein/gruppen" >}}) und [Zugriff auf ein Ereignis verwalten]({{< relref "/docs/user/how-to/allgemein/ereigniszugriff-verwalten" >}}). Warum die Zugriffssteuerung so aufgebaut ist, erklärt der Hintergrundartikel [Wie die Zugriffssteuerung gedacht ist]({{< relref "/docs/user/explanation/allgemein/zugriffssteuerung" >}}).
