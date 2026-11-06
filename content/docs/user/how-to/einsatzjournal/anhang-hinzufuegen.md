---
title: "Einen Anhang hinzufügen"
description: "Bilder, PDF und andere Dateien an eine Meldung hängen und wieder entfernen."
weight: 20
---
An eine Meldung lassen sich Dateien hängen, zum Beispiel ein Foto vom Einsatzort, ein PDF oder eine Tabelle.

## Beim Erfassen anhängen

1. Öffnen Sie **Editor** im Einsatzjournal und füllen Sie die Meldung aus.
2. Ziehen Sie Dateien in das Feld **Anhänge** («Dateien hier ablegen») oder klicken Sie auf **Anhang hinzufügen** und wählen Sie die Dateien.
3. Klicken Sie auf **speichern**.

Die Dateien werden mit dem Speichern der Meldung hochgeladen. Bis dahin lassen sie sich mit dem Kreuz neben dem Dateinamen wieder entfernen.

![Der Editor mit einem angehängten PDF im Feld Anhänge](/images/docs/einsatzjournal/editor-anhang.webp)

## An eine bestehende Meldung anhängen

1. Klicken Sie in der Liste unter dem Editor bei der Meldung auf **bearbeiten**.
2. Fügen Sie die Dateien wie oben hinzu. Hier werden sie sofort hochgeladen.
3. Klicken Sie auf **speichern**.

Bei Meldungen, die bereits triagiert sind, fehlt **bearbeiten**. Siehe [Eine Meldung korrigieren]({{< relref "/docs/user/how-to/einsatzjournal/meldung-korrigieren" >}}).

## Einen Anhang entfernen

Klicken Sie beim Anhang auf das Kreuz (**Anhang entfernen**).

## Erlaubt sind

Bilder (JPEG, PNG, GIF, WebP, TIFF), PDF, Text- und CSV-Dateien, Word-, Excel- und PowerPoint-Dateien sowie ZIP. Eine Datei darf höchstens 25 MB gross sein. Die Administration kann die Grenze tiefer setzen.

## Wenn es nicht klappt

| Meldung | Ursache |
|---|---|
| «Datei überschreitet die maximale Upload-Grösse» | Die Datei ist zu gross. Verkleinern Sie sie oder teilen Sie sie auf. |
| «Dateianhänge sind auf diesem Server nicht aktiviert» | Die Administration hat Anhänge nicht eingeschaltet. |
| «Upload fehlgeschlagen» | Versuchen Sie es erneut. |

Wie die Administration Anhänge einschaltet, steht in der [Konfiguration]({{< relref "/docs/admin/reference/konfiguration" >}}).
