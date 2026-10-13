---
title: "Adottare sitrep nella propria organizzazione"
menu_title: "Adozione"
slug: "adozione"
description: "Provare, gestire autonomamente o usare come servizio: come adottare sitrep nella vostra organizzazione."
---
Ci sono tre modi di usare sitrep. Non si escludono a vicenda: la maggior parte comincia con la demo.

## 1. Provare

Nell'[ambiente demo](https://demo.sitrep.ch) create un account (o accedete con GitHub) e iniziate subito. La demo gira sempre con l'attuale versione di sviluppo. I dati vengono cancellati regolarmente: non gestitevi quindi un intervento reale.

## 2. Gestirlo autonomamente

sitrep è software libero ([AGPL-3.0](https://github.com/f-eld-ch/sitrep/blob/HEAD/LICENSE)) che funziona nel browser con requisiti minimi. Potete gestirlo su un Raspberry Pi, in una macchina virtuale o come container Docker.

Vi servono:

- un server Linux. Per Fedora, RHEL, Rocky Linux, AlmaLinux, Debian e Ubuntu sono disponibili pacchetti firmati su [packages.sitrep.ch](https://packages.sitrep.ch)
- un database PostgreSQL
- per l'esercizio produttivo, un provider OpenID Connect per l'autenticazione

Una guida passo dopo passo si trova in [Installation & Setup]({{< relref "/docs/admin/how-to/setup-with-local-postgres" >}}) (in inglese). La gestione degli accessi a eventi e gruppi è descritta nella [documentazione degli accessi]({{< relref "/docs/admin/reference/access-control" >}}) (in inglese).

L'[associazione F-ELD](https://f-eld.ch) vi sostiene nella messa in opera e nella gestione. Scriveteci a [info@sitrep.ch](mailto:info@sitrep.ch).

## 3. Usarlo come servizio

L'[associazione F-ELD](https://f-eld.ch), che sviluppa sitrep, offre sitrep come servizio gestito ai propri membri. La gestione avviene su un'infrastruttura sicura in Svizzera, con [VSHN](https://www.vshn.ch) come partner di hosting. Non dovete occuparvi di alcuna installazione.

Rispondiamo volentieri a domande sul servizio e sull'adesione: [info@sitrep.ch](mailto:info@sitrep.ch).

## Quale via fa per noi?

| Volete … | Allora |
|---|---|
| prima conoscere sitrep | Ambiente demo |
| pieno controllo su dati e gestione | Gestirlo autonomamente, con il sostegno di F-ELD |
| non costruire un'informatica propria per questo | Come servizio |

Come introdurre e valutare sitrep nel vostro stato maggiore lo trovate in [Per il vostro stato maggiore]({{< relref "/fuer-ihren-stab" >}}).
