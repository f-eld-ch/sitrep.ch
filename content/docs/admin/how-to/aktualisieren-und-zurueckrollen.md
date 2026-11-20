---
title: "Aktualisieren und zurückrollen"
description: "Worauf Sie beim Aktualisieren von sitrep achten müssen, und warum ein Rollback nach einer Änderung der Projektion fehlschlägt."
weight: 40
---
Lesen Sie diese Seite, bevor Sie Aktualisierungen automatisch freigeben, zum Beispiel mit Argo CD oder Kargo.

## Migrationen laufen vor den neuen Pods

Der Hook-Job aktualisiert das Datenbankschema, während die bisherige Version noch läuft. Jede Migration muss deshalb mit der vorherigen Version kompatibel bleiben: zuerst erweitern, Spalten und Tabellen erst eine Version später entfernen.

Das gilt für das Helm-Chart ([Mit Helm auf Kubernetes betreiben]({{< relref "/docs/admin/how-to/kubernetes-helm" >}})). Bei einer Installation aus Paketen führt die systemd-Unit `sitrep migrate up` bei jedem Start automatisch aus.

## Rollback nach einer Änderung der Projektion

Ändert eine Version die Logik einer Projektion (ein Handler erhält eine neue `Version()`), baut die neue Version das Lesemodell neu auf. Ein älteres Image lehnt den Start danach ab (`projection is newer than this build`) und startet in einer Schleife neu.

Rollen Sie in diesem Fall nicht einfach auf das vorherige Image zurück. Stellen Sie stattdessen eine korrigierte Version bereit (Rollforward) oder stellen Sie die Datenbank aus einer Sicherung wieder her. Automatische Freigabeprozesse sollten solche Versionen als nicht automatisch rückgängig machbar behandeln.

## Mit Kargo freigeben

Kargo setzt `image.tag` (oder `image.digest`) in der Values-Datei der Umgebung. Bleibt `image.tag` leer, wird die `appVersion` des Charts eingesetzt.
