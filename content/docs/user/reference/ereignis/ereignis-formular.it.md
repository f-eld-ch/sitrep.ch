---
title: "Il modulo di un evento"
description: "Campi, indicazioni obbligatorie e valori predefiniti alla creazione e alla modifica."
weight: 20
---
Lo stesso modulo serve per creare e per modificare un evento. Istruzioni: [Creare un evento]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}) e [Modificare un evento]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}).

![Il modulo Crea Nuovo Incidente con i valori predefiniti sotto Settori](/images/docs/it/ereignis/ereignis-formular-leer.webp)

## Aprire il modulo

| Modulo | Dove |
|---|---|
| **Crea Nuovo Incidente** | Pulsante **Creare** nell'elenco degli eventi |
| **Modifica Incidente** | Menu dell'evento (mouse sul nome dell'evento nella barra di navigazione, poi **Modifica Incidente**) oppure pulsante **Modificare** sulla scheda nell'elenco degli eventi |

## Campi

| Campo | Obbligatorio | Contenuto e regole |
|---|---|---|
| **Nome Di Incidente** | sì | Nome dell'evento. Finché è vuoto, non è possibile salvare. |
| **Evento Superiore** | no | Scelta tra gli eventi aperti che non hanno a loro volta un evento superiore. Valore predefinito: «nessun evento superiore». Nella modifica il campo manca se l'evento ha propri eventi secondari. |
| **Posizione** | no | Testo libero |
| **Settori** | – | Servizi che ricevono messaggi. Per ogni settore un **nome** e un'**abbreviazione** |

## Settori

- Il **nome** compare nel flusso dei messaggi del triage, l'**abbreviazione** come piccolo contrassegno sui messaggi.
- I nuovi eventi iniziano con due valori predefiniti. Sono memorizzati in modo fisso in sitrep e seguono la **lingua dell'interfaccia** al momento della creazione:

| Lingua | Valore predefinito 1 (nome / abbreviazione) | Valore predefinito 2 (nome / abbreviazione) |
|---|---|---|
| Tedesco | C Lage / Lage | Stabschef / SC |
| Francese | Chef du suivi de la situation / C suivi | Chef d'état-major / C EM |
| Italiano | Capo ANSIT / ANSIT | Capo di stato maggiore / C SM |

- Sotto **Aggiungi Nuovo Settore** ne aggiungete altri. Nome e abbreviazione sono entrambi obbligatori, altrimenti il più è bloccato.
- Un settore non ancora salvato si può rimuovere con il pulsante rosso.
- Un settore salvato si può solo **rinominare**, non rimuovere.
- Il settore **Carta informativa** lo crea il sistema. Non compare nel modulo e non si può cambiare.

![Il modulo con quattro settori: i due valori predefiniti, Pompieri e Servizi sanitari](/images/docs/it/ereignis/ereignis-formular-ausgefuellt.webp)

## Nella modifica inoltre

- Il titolo è **Modifica Incidente**.
- Sotto il modulo ci sono la **Modalità di accesso** e l'**Accesso all'evento**. Vedi [Gestire l'accesso a un evento]({{< relref "/docs/user/how-to/allgemein/ereigniszugriff-verwalten" >}}).

![Il modulo Modifica Incidente con l'evento superiore scelto](/images/docs/it/ereignis/ereignis-uebergeordnet-gewaehlt.webp)

## Dopo il salvataggio

sitrep apre l'**editore** del giornale d'intervento di questo evento.
