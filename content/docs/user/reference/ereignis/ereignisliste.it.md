---
title: "L'elenco degli eventi"
description: "Struttura dell'elenco degli eventi: schede, pulsanti per stato e filtri."
weight: 10
---
L'elenco degli eventi si apre dopo l'accesso e con il logo in alto a sinistra. Mostra tutti gli eventi che potete vedere. Nell'app si intitola «Incidenti». Le istruzioni per le azioni sono nell'area [Eventi]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}).

![L'elenco degli eventi con i pulsanti Creare e mostra chiusa e gli eventi aperti come schede](/images/docs/it/ereignis/ereignisliste.webp)

## Pulsanti sopra l'elenco

| Pulsante | Effetto |
|---|---|
| **Creare** | Apre il modulo per un nuovo evento |
| **mostra chiusa** | Mostra anche gli eventi chiusi. Poi si chiama **nascondi chiuso**. |

Per impostazione predefinita gli eventi chiusi sono nascosti.

## La scheda di un evento

| Indicazione | Contenuto |
|---|---|
| Titolo | Nome dell'evento, accanto un contrassegno per l'accesso |
| **posizione** | Posizione dell'evento, se inserita |
| **aperto** | Momento in cui l'evento è stato creato |
| **chiuso** | Momento della chiusura, solo per gli eventi chiusi |

**Contrassegno per l'accesso:** un lucchetto chiuso significa **Limitato**, un lucchetto aperto **Accesso aperto**. Passandoci sopra con il mouse compare il nome come suggerimento. Vedi [Controllo degli accessi]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).

Gli eventi chiusi hanno lo sfondo giallo.

![L'elenco con gli eventi chiusi, su sfondo giallo](/images/docs/it/ereignis/ereignisliste-geschlossene.webp)

## Pulsanti sulla scheda

Quali pulsanti mostra una scheda dipende dallo stato dell'evento e dal vostro ruolo.

| Pulsante | Effetto | Aperto | Chiuso | Ruolo |
|---|---|---|---|---|
| **Accedere** | Apre l'evento (la panoramica) | sì | sì | Lettore |
| **Modificare** | Apre il modulo per la modifica | sì | no | Editore |
| **Chiudere** | Chiude l'evento | sì | no | Responsabile |
| **Aprire** | Riapre l'evento | no | sì | Responsabile |
| **Eliminare** | Elimina l'evento | no | sì | Proprietario |

Il modulo per la modifica si raggiunge anche dal menu dell'evento, vedi [Modificare un evento]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}). Se vi manca il ruolo, manca il pulsante. Tutti i diritti sono in [Stato e diritti di un evento]({{< relref "/docs/user/reference/ereignis/status-und-rechte" >}}).

## Eventi secondari

Un evento secondario compare rientrato sotto il suo evento principale, con una linea blu sul bordo sinistro. L'elenco mostra due livelli. Un evento secondario il cui evento principale è stato eliminato si trova di nuovo al livello più alto.

![L'elenco degli eventi: sotto «Unwetter Kanton – Kantonales Führungsorgan» ci sono tre eventi secondari](/images/docs/it/ereignis/ereignisliste-hierarchie.webp)
