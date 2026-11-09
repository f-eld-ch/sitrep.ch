---
title: "Eventi superiori e secondari"
description: "Come un organo di condotta cantonale riunisce in un evento superiore gli eventi delle regioni."
weight: 20
---
sitrep conosce eventi su **due livelli**: un evento **superiore** (l'evento principale) e sotto di esso eventi **secondari**. Il secondo livello serve a far sì che più organi di condotta conducano ciascuno il proprio evento e che un organo superiore veda comunque l'intero quadro della situazione.

## Il caso d'uso

In caso di maltempo nel Cantone, ogni **organo di condotta regionale** (OCR) conduce il proprio evento in sitrep: con messaggi, triage, settori, persone, mezzi e una carta propri.

L'**organo di condotta cantonale** (OCC) apre a questo scopo l'evento **superiore**. Ogni evento degli OCR gli viene assegnato come evento secondario. In questo modo l'OCC riunisce gli eventi di tutti gli OCR e vede la situazione del Cantone, senza che le regioni debbano lavorare in modo diverso.

![L'elenco degli eventi: sotto «Unwetter Kanton – Kantonales Führungsorgan» ci sono gli eventi delle regioni](/images/docs/it/ereignis/ereignisliste-hierarchie.webp)

## Che cosa riunisce l'evento superiore

- **Persone:** il compendio delle persone (menu **Persone**) dell'evento principale somma i numeri di tutti gli eventi secondari. Sotto, i numeri compaiono singolarmente per evento sotto **Incidenti secondari**.
- **Mezzi:** il compendio dei mezzi (menu **Mezzi**) mostra i mezzi degli eventi secondari come gruppi a sé, contrassegnati come «Incidente secondario», e li include nei totali.
- **Carta:** i livelli degli eventi secondari compaiono sulla carta dell'evento principale.

![Il compendio delle persone dell'organo di condotta cantonale con i totali e gli eventi secondari](/images/docs/it/ereignis/uebergeordnet-personen.webp)

![Il compendio dei mezzi dell'organo di condotta cantonale con i mezzi degli eventi secondari](/images/docs/it/ereignis/uebergeordnet-mittel.webp)

## Che cosa resta proprio di ogni evento

Gli eventi non sono parti di un grande evento, ma eventi propri che vengono solo riuniti:

- Ogni evento ha il proprio **accesso**. Chi può vedere e modificare un evento lo stabilisce il suo controllo degli accessi, vedi [Controllo degli accessi]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).
- Ogni evento viene **chiuso**, aperto ed eliminato singolarmente. Chiudere o eliminare l'evento principale non cambia nulla negli eventi secondari: restano aperti e collegati a esso oppure, dopo un'eliminazione, si trovano di nuovo al livello più alto dell'elenco.
- I **settori** valgono per ogni evento.

## Perché solo due livelli

Due livelli bastano per la suddivisione per regioni e mantengono la riunione facile da seguire. Un evento è quindi o evento principale o secondario, mai entrambi. Come evento principale si possono scegliere solo eventi aperti. I dettagli sono in [Collegare un evento superiore]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}).
