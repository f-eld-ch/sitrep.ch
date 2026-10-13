---
title: "Su sitrep"
slug: "su-sitrep"
description: "A cosa serve sitrep, chi c'è dietro il progetto e come contribuire o utilizzare sitrep."
---
sitrep è un software per la rappresentazione elettronica della situazione negli stati maggiori. Permette di registrare, coordinare e comunicare i messaggi durante un evento, senza intralciare il lavoro: non un sistema in più da aggiornare in parallelo, ma uno strumento che semplifica i laboriosi processi manuali e accelera il flusso dei messaggi nello stato maggiore.

sitrep è pensato per la protezione civile e altri stati maggiori civili, non per scopi militari.

## A cosa serve sitrep

- **Registrare i messaggi:** il giornale d'intervento raccoglie tutti i messaggi in entrata e in uscita. La registrazione digitale è più veloce e meno soggetta a errori del foglio di messaggio scritto a mano.
- **Distribuire i messaggi:** nel triage i messaggi vengono assegnati ai settori, in forma digitale o come foglio di messaggio stampato.
- **Rappresentare la situazione:** la carta della situazione mostra la situazione attuale con una parte dei simboli dell'Ufficio federale della protezione della popolazione (UFPP).

Maggiori dettagli nella pagina [Funzionalità]({{< relref "/funktionen" >}}).

## Open source

sitrep è software libero con licenza [AGPL-3.0](https://github.com/f-eld-ch/sitrep/blob/HEAD/LICENSE). Potete usarlo, gestirlo autonomamente, modificarlo e svilupparlo, a condizione che le modifiche tornino a beneficio di tutti. Il codice sorgente si trova nel [repository GitHub](https://github.com/f-eld-ch/sitrep).

## Contribuire

- **Feedback e richieste** sono benvenuti. Consultate prima le [discussioni](https://github.com/f-eld-ch/sitrep/discussions) e le [issue aperte](https://github.com/f-eld-ch/sitrep/issues).
- **Traduzioni:** le gestiamo su [Transifex](https://explore.transifex.com/f-eld/sitrep/). sitrep esiste in tedesco, francese, italiano e inglese. Correzioni e nuove lingue ci aiutano molto.
- **Vulnerabilità di sicurezza:** non segnalatele pubblicamente, ma secondo la [politica di sicurezza](https://github.com/f-eld-ch/sitrep/security/policy).

## Provare

Create un account nell'ambiente demo e iniziate subito: [demo.sitrep.ch](https://demo.sitrep.ch). I dati vengono cancellati regolarmente. Non gestite lì un intervento reale.

## Gestione

- **Gestirlo autonomamente:** sitrep funziona nel browser, richiede poche risorse e gira su un Raspberry Pi, in una VM o come container Docker. Le guide si trovano nella [documentazione di amministrazione]({{< relref "/docs/admin" >}}).
- **Come servizio:** l'[associazione F-ELD](https://f-eld.ch), che sviluppa e cura sitrep, offre sitrep come servizio gestito ai propri membri. La gestione avviene su un'infrastruttura sicura in Svizzera, con [VSHN](https://www.vshn.ch) come partner di hosting.

## Contatto

Domande su sitrep o sul servizio: [info@sitrep.ch](mailto:info@sitrep.ch)
