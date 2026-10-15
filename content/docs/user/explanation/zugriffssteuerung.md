---
title: "Wie die Zugriffssteuerung gedacht ist"
description: "Warum sitrep globale Rollen und Ereignisrollen trennt und wie Gruppen, Modi und Rollen zusammenspielen."
weight: 10
---
sitrep regelt den Zugriff auf zwei Ebenen. Die **globalen Rollen** bestimmen, wer das System verwalten darf. Die **Ereignisrollen** bestimmen, wer ein einzelnes Ereignis sehen und bearbeiten darf. Die beiden Ebenen sind getrennt, damit jemand ein Ereignis führen kann, ohne das System verwalten zu dürfen, und umgekehrt.

Alle Rollen, Modi und Rechte im Einzelnen stehen in der [Referenz]({{< relref "/docs/user/reference/zugriffssteuerung" >}}).

## Zwei Ebenen

Wer die Installation betreibt, braucht Rechte über alle Ereignisse hinweg: Benutzer und Gruppen verwalten, Rollen vergeben. Wer ein Ereignis führt, braucht Rechte nur für dieses Ereignis. Würde sitrep beides in einer Rolle vermischen, müsste jede Einsatzleitung auch Systemadministrator sein, oder die Administration könnte nicht in Ereignisse eingreifen. Darum gibt es zwei Gruppen von Rollen.

Bei den globalen Rollen gibt es bewusst nur zwei. Der Gruppenadministrator kann Gruppen und Mitglieder verwalten, aber keine Administratoren ernennen. Das hält die Verwaltung des Alltags von der Vergabe der weitreichenden Rechte getrennt.

## Gruppen statt einzelner Benutzer

Einzelnen Benutzern Rechte zu geben, wird bei wechselnden Stäben schnell unübersichtlich. Mit einer Gruppe geben Sie der Gruppe die Rolle auf dem Ereignis, und alle Mitglieder erben sie. Ändert sich die Besetzung, ändern Sie die Gruppe, nicht jedes Ereignis. Die Berechtigungen passen sich sofort an.

Gibt es neben der Gruppenrolle auch eine direkte Berechtigung für eine Person, gilt diese weiter, wenn die Person aus der Gruppe entfernt wird. Wird eine Gruppe archiviert, verliert sie ihren Beitrag auf allen Ereignissen. Direkte Berechtigungen an einzelne Benutzer bleiben bestehen.

## Eine Rolle pro Ereignis

Ein Principal hat auf einem Ereignis genau eine Rolle. Eine neue Berechtigung ersetzt die alte. So gibt es nie die Frage, welche von mehreren Rollen gilt.

Der letzte Besitzer eines Ereignisses und der letzte Systemadministrator lassen sich nicht entziehen. Damit bleibt jedes Ereignis und jede Installation immer verwaltbar.

## Offener Zugriff und Eingeschränkt

Bei **Offenem Zugriff** können alle angemeldeten Benutzer mitarbeiten. Das ist im Einsatz oft praktisch, weil eine fehlende Berechtigung unter Zeitdruck im Weg steht. Auch dann bleibt das Löschen dem Besitzer vorbehalten, weil es sich nicht rückgängig machen lässt.

Bei **Eingeschränktem** Zugriff zählen nur ausdrückliche Berechtigungen. Das passt, wenn ein Ereignis sensible Informationen enthält oder wenn Sie genau steuern wollen, wer mitarbeitet. Weil der Wechsel von offen auf eingeschränkt allen ohne Berechtigung den Zugriff nimmt, zeigt sitrep vor dem Wechsel eine Bestätigung.

## Der Standard für neue Ereignisse

Mit welchem Modus ein Ereignis startet, ist nicht fest vorgegeben. Ein Systemadministrator legt es im **Standard-Zugang** fest, damit nicht jede Einsatzleitung es bei jedem Ereignis neu entscheiden muss. Solange nichts eingestellt ist, starten neue Ereignisse eingeschränkt: Wer nichts entscheidet, gibt also keinen Zugriff aus Versehen frei.

Zusätzlich kann der Standard-Zugang **Standard-Rollenzuweisungen** enthalten. Eine Gruppe wie der Führungsstab erhält dann die Rolle auf jedem neuen Ereignis automatisch. Das ist der übliche Weg, wenn derselbe Stab immer mitarbeiten soll.
