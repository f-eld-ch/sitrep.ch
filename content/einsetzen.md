---
title: "sitrep bei sich einsetzen"
menu_title: "Einsetzen"
description: "Ausprobieren, selber betreiben oder als Service nutzen: so setzen Sie sitrep in Ihrer Organisation ein."
---
Es gibt drei Wege, sitrep zu nutzen. Sie schliessen sich nicht aus: die meisten starten mit der Demo.

## 1. Ausprobieren

In der [Demo-Umgebung](https://demo.sitrep.ch) erstellen Sie einen Account (oder melden sich mit GitHub an) und legen sofort los. Die Demo läuft immer mit der aktuellen Entwicklungsversion. Die Daten werden regelmässig gelöscht, führen Sie dort darum keinen echten Einsatz.

## 2. Selber betreiben

sitrep ist freie Software ([AGPL-3.0](https://github.com/f-eld-ch/sitrep/blob/HEAD/LICENSE)) und läuft im Browser mit minimalen Anforderungen. Sie können es auf einem Raspberry Pi, in einer virtuellen Maschine oder als Docker-Container betreiben.

Sie brauchen dafür:

- einen Linux-Server. Für Fedora, RHEL, Rocky Linux, AlmaLinux, Debian und Ubuntu gibt es signierte Pakete auf [packages.sitrep.ch](https://packages.sitrep.ch)
- eine PostgreSQL-Datenbank
- für den produktiven Betrieb einen OpenID-Connect-Anbieter für die Anmeldung

Eine Schritt-für-Schritt-Anleitung finden Sie unter [Installation & Setup]({{< relref "/docs/admin/how-to/setup-with-local-postgres" >}}). Wie Sie Zugriffe auf Ereignisse und Gruppen verwalten, steht in der [Zugriffsdokumentation]({{< relref "/docs/admin/reference/access-control" >}}).

Beim Einrichten und Betrieb unterstützt Sie der [Verein F-ELD](https://f-eld.ch). Schreiben Sie uns an [info@sitrep.ch](mailto:info@sitrep.ch).

## 3. Als Service nutzen

Der [Verein F-ELD](https://f-eld.ch), der sitrep entwickelt, bietet sitrep als betreuten Dienst für seine Mitglieder an. Der Betrieb erfolgt auf sicherer Infrastruktur in der Schweiz mit [VSHN](https://www.vshn.ch) als Hosting-Partner. Sie müssen sich um keine Installation kümmern.

Fragen zum Service und zur Mitgliedschaft beantworten wir gerne: [info@sitrep.ch](mailto:info@sitrep.ch).

## Welcher Weg passt zu uns?

| Sie wollen … | Dann |
|---|---|
| sitrep zuerst kennenlernen | Demo-Umgebung |
| volle Kontrolle über Daten und Betrieb | Selber betreiben, mit Unterstützung von F-ELD |
| keine eigene IT dafür aufbauen | Als Service |

Wie Sie sitrep in Ihrem Stab einführen und prüfen, steht unter [Für Ihren Stab]({{< relref "/fuer-ihren-stab" >}}).
