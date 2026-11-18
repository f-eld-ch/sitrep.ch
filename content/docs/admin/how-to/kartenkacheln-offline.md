---
title: "Karte ohne Internet betreiben (Kartenkacheln)"
description: "Die Kartenkacheln von swisstopo von sitrep selbst ausliefern lassen, herunterladen, aktuell halten und prüfen."
weight: 30
---
Die Karte von sitrep zeichnet sich aus Vektorkacheln von swisstopo. Standardmässig laden die Browser der Benutzer diese Kacheln direkt von `vectortiles.geo.admin.ch`. Ohne Internetzugang bleibt die Karte dann leer.

Mit **lokalen Kartenkacheln** liefert sitrep die Kacheln selbst aus. Dazu liegen zwei Archive auf dem Server, zusammen rund 2,5 GB. Die Karte funktioniert danach auch ohne Internet. Diese Anleitung zeigt, wie Sie die Archive bereitstellen, aktuell halten und prüfen. Alle Optionen stehen unter [Konfigurationsoptionen]({{< relref "/docs/admin/reference/konfiguration" >}}).

{{< note type="info" >}}
Die **Satellitenkarte** gibt es nicht offline: swisstopo veröffentlicht dafür keine Kacheln zum Herunterladen. Ist swisstopo für den Browser nicht erreichbar, ist sie in der Kartenauswahl ausgegraut («Offline nicht verfügbar»). Eine gerade gewählte Satellitenkarte wechselt dann auf die Basiskarte. Ebenso brauchen die Suche und die WMS-Ebenen weiterhin Internet.
{{< /note >}}

## Voraussetzungen

- **Speicherplatz:** rund 2,5 GB für die beiden Archive. Während eines Updates kommt das Archiv hinzu, das gerade geladen wird, planen Sie deshalb rund 4 GB ein.
- **Netzwerk:** für den Download muss der Server `vectortiles.geo.admin.ch` über TCP 443 (HTTPS) erreichen. Danach braucht er das nur noch für Updates.
- **Schreibrecht:** der sitrep-Prozess muss im Kachelverzeichnis schreiben dürfen, wenn sitrep die Archive selbst lädt. Standard ist `/var/lib/sitrep/tiles`. Beim Linux-Paket legt der Dienst `/var/lib/sitrep` an.
- **Anmeldung:** die Kacheln werden nur angemeldeten Benutzern ausgeliefert.

## Variante 1: sitrep lädt und aktualisiert die Archive selbst

Das ist der einfachste Weg. Schalten Sie `auto-download` ein und starten Sie sitrep neu:

```yaml
map:
  tiles:
    dir: "/var/lib/sitrep/tiles"
    auto-download: true
```

Oder als Umgebungsvariable: `SITREP_MAP_TILES_AUTO_DOWNLOAD=true`.

Was danach passiert:

1. Beim Start fehlen die Archive. sitrep schreibt `no local tile archive yet, downloading it in the background` und lädt sie im Hintergrund. Bis ein Archiv komplett ist, nutzt die Karte swisstopo online. Das Herunterladen beginnt sofort.
2. Der Fortschritt steht im Protokoll, in 10-%-Schritten (`tile archive download progress … progress=40%`).
3. Ist ein Archiv fertig, prüft sitrep es und ersetzt damit die alte Version in einem Schritt. Ab dann liefert sitrep die Kacheln selbst aus, ohne Neustart. Das Protokoll zeigt `local tile archive is now available, switching from swisstopo to local tiles`.
4. Danach fragt sitrep alle 24 Stunden (`update-interval`) bei swisstopo nach einer neueren Version. Ist alles aktuell, passiert nichts weiter. Der erste Check nach einem Neustart erfolgt mit einer zufälligen Verzögerung von bis zu einer Minute, damit nicht viele Instanzen gleichzeitig anfragen. Fehlt ein Archiv, beginnt der Download sofort.

Ein abgebrochener Download (Netzwerkfehler, Neustart) wird beim nächsten Versuch dort fortgesetzt, wo er aufgehört hat. Reicht der freie Speicherplatz nicht, überspringt sitrep den Download, schreibt eine Warnung und liefert weiter das vorhandene Archiv aus. Es liegt höchstens ein fertiges Archiv und eine unfertige Datei pro Kachelsatz auf der Festplatte, alte Versionen sammeln sich nicht an.

## Variante 2: von Hand oder zeitgesteuert mit der Kommandozeile

Mit der Kommandozeile laden Sie die Archive einmalig oder aus einem Planer (cron, systemd-Timer), ohne `auto-download` einzuschalten. Die Befehle laufen auf dem Server und lesen die Konfiguration wie der Dienst. Mit `--dir` geben Sie ein anderes Verzeichnis an.

```bash
sitrep tiles download   # laden oder aktualisieren
sitrep tiles status     # installierte Version prüfen
sitrep tiles prune      # Überflüssiges löschen
```

`sitrep tiles status` zeigt für jeden Kachelsatz, ob er installiert ist, wann er geladen wurde und ob swisstopo eine andere Version anbietet. `prune` löscht Archive von Kachelsätzen, die sitrep nicht mehr ausliefert, zu alte unfertige Downloads und verwaiste Hilfsdateien. Andere Dateien im Kachelverzeichnis fasst es nie an.

Ein laufender sitrep-Server bemerkt neue Archive von selbst, innerhalb von etwa 30 Sekunden.

## Variante 3: Dateien von Hand kopieren (ohne Internet auf dem Server)

Hat der Server nie Internetzugang, laden Sie die Archive auf einem anderen Rechner und kopieren sie auf den Server. Sie liegen bei swisstopo unter:

```text
https://vectortiles.geo.admin.ch/tiles/ch.swisstopo.base.vt/v1.0.0/ch.swisstopo.base.vt.mbtiles
https://vectortiles.geo.admin.ch/tiles/ch.swisstopo.relief.vt/v1.0.0/ch.swisstopo.relief.vt.mbtiles
```

Legen Sie sie so ab:

```text
/var/lib/sitrep/tiles/ch.swisstopo.base.vt/v1.0.0/ch.swisstopo.base.vt.mbtiles
/var/lib/sitrep/tiles/ch.swisstopo.relief.vt/v1.0.0/ch.swisstopo.relief.vt.mbtiles
```

{{< note type="warning" >}}
Kopieren Sie jede Datei zuerst unter einem **anderen Namen** in dasselbe Verzeichnis und benennen Sie sie erst danach um (`mv`). sitrep liest die Archive, ohne sie zu sperren. Eine Datei, die an Ort und Stelle überschrieben wird, kann zu fehlerhaften Kacheln führen.
{{< /note >}}

- Lassen Sie `auto-download` bei diesem Weg **aus**. Von Hand kopierte Dateien tragen keine Versionsangabe, deshalb würde sitrep sie bei eingeschaltetem `auto-download` durch einen frischen Download ersetzen.
- sitrep bemerkt die neuen Dateien innerhalb von etwa 30 Sekunden.
- Für ein Update ersetzen Sie die Dateien auf dieselbe Weise.

## Prüfen, ob lokale Kacheln im Einsatz sind

- **Protokoll beim Start:** sitrep schreibt pro Kachelsatz eine Zeile. `serving map tiles from local archive` nennt Grösse und Alter. `no local tile archive, the map uses swisstopo online` heisst, dass noch nichts bereitliegt.
- **Kommandozeile:** `sitrep tiles status`.
- **Im Browser:** öffnen Sie die Entwicklerwerkzeuge (F12), Reiter «Netzwerk», und filtern Sie nach `pbf`. Die Kacheln kommen von `…/api/v2/tiles/…` auf Ihrem sitrep-Server, nicht von `vectortiles.geo.admin.ch`.
- **Ohne Internet:** Blockieren Sie in den Entwicklerwerkzeugen `*geo.admin.ch*` (Chrome: «Network request blocking» im Befehlsmenü Strg+Umschalt+P; Firefox: Rechtsklick auf eine Anfrage, «Block URL»). Die Basiskarte muss weiter zeichnen. Die Option «Offline» der Werkzeuge ist dafür ungeeignet, sie sperrt auch Ihren eigenen Server.

## Wenn etwas nicht stimmt

| Beobachtung | Bedeutung und Abhilfe |
|---|---|
| `no local tile archive, the map uses swisstopo online` | Es liegt kein Archiv im Kachelverzeichnis. Das ist kein Fehler, die Karte nutzt swisstopo. Laden Sie die Archive wie oben beschrieben |
| `local tile archive cannot be used` (Warnung) | Eine Datei ist vorhanden, lässt sich aber nicht lesen (beschädigt oder unvollständig kopiert). Die Anfragen für diesen Kachelsatz schlagen fehl, bis Sie das Problem beheben. Löschen Sie die Datei, dann nutzt die Karte wieder swisstopo, und laden Sie sie neu |
| `local tile archive was removed` (Warnung) | Das Archiv wurde gelöscht. Die Karte nutzt wieder swisstopo |
| `not enough free disk space` | Zu wenig Platz für den Download. Das vorhandene Archiv bleibt im Einsatz. Schaffen Sie Platz, der nächste Versuch holt es nach |
| Karte bleibt leer ohne Internet | Es liegt kein Archiv bereit, oder die Kacheln stehen nur teilweise zur Verfügung. Prüfen Sie `sitrep tiles status` |

## Quellenangabe und Nutzungsbedingungen

Die Kacheln stammen von swisstopo und stehen unter deren Nutzungsbedingungen für kostenlose Geodaten und Geodienste (OGD). Lizenz und vorgeschriebene Quellenangabe sind auf der Seite [Vector Tiles Service: Verfügbare Dienste und Daten](https://www.geo.admin.ch/de/vector-tiles-service-verfuegbare-dienste-und-daten) beschrieben. sitrep zeigt die Quellenangabe unten links auf der Karte automatisch an: «© swisstopo», ein Klick zeigt die ganze Liste, in der Sprache der Benutzeroberfläche. Entfernen Sie sie nicht.

sitrep verteilt die Archive nicht weiter: jede Instanz lädt sie selbst bei swisstopo.

## Betrieb mit Kubernetes (Helm)

Das Helm-Chart kennt dafür ab Version 1.2.0 den Abschnitt `mapTiles`. Er ist standardmässig aus. Jeder Pod lädt und aktualisiert seine **eigene Kopie** der Archive in einem eigenen Volume, deshalb brauchen Sie keinen gemeinsamen Speicher (kein ReadWriteMany).

```yaml
mapTiles:
  enabled: true
```

- **Ein Pod:** das Chart legt einen PersistentVolumeClaim an (Standardgrösse 6 Gi). Er überlebt Neustarts und bleibt auch nach `helm uninstall` erhalten, damit die 2,5 GB nicht erneut geladen werden. Die Aktualisierung des Deployments läuft dann mit `Recreate`, weil ein ReadWriteOnce-Volume nicht gleichzeitig am alten und am neuen Pod hängen kann. Das bedeutet eine kurze Unterbrechung bei Updates.
- **Mehrere Pods oder Autoscaling:** jeder Pod bekommt ein eigenes Volume, das mit dem Pod verschwindet. Jeder neue Pod lädt die Archive daher selbst herunter (rund 2,5 GB Datenverkehr). Bis dahin nutzt seine Karte swisstopo online. Das Deployment wird weiter schrittweise und ohne Unterbrechung aktualisiert.
- Mit `mapTiles.persistence.type` wählen Sie `pvc` oder `ephemeral` selbst. Die Standardeinstellung `auto` wählt je nach Anzahl der Pods.
- **NetworkPolicy:** ist `networkPolicy.enabled` gesetzt, muss `networkPolicy.egress` den Zugriff auf `vectortiles.geo.admin.ch` (TCP 443) erlauben, sonst kann kein Pod die Archive laden.
- **Autoscaling:** der Zwischenspeicher des Betriebssystems für die Kacheln zählt als Speicherverbrauch. Verwenden Sie für das Autoscaling ein CPU-Ziel (`targetCPUUtilizationPercentage`) statt eines Speicher-Ziels.

Alle Werte und Prüfungen des Charts stehen in der [Dokumentation zu Kubernetes und Helm](https://github.com/f-eld-ch/sitrep/blob/HEAD/docs/administrator/kubernetes-helm.md) im Quellcode.
