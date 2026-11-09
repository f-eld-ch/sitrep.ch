---
title: "Collegare un evento superiore"
description: "Assegnare un evento a un evento superiore o sciogliere l'assegnazione."
weight: 30
---
Con un evento superiore riunite il quadro della situazione di più eventi, per esempio quello delle regioni nel Cantone. A che cosa serve lo spiega [Eventi superiori e secondari]({{< relref "/docs/user/explanation/ereignis/uebergeordnete-und-untergeordnete-ereignisse" >}}). Per l'evento secondario vi serve almeno il ruolo **Editore**.

## Collegare durante la creazione

1. Aprite gli **Incidenti** e fate clic su **Creare**.
2. Nel campo **Evento Superiore** scegliete l'evento principale.
3. Compilate il modulo e fate clic su **Salvare**. Vedi [Creare un evento]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}).

## Collegare un evento esistente

1. Nell'evento che deve diventare secondario aprite il modulo **Modifica Incidente** (pulsante **Modificare** nell'elenco degli eventi oppure menu dell'evento, vedi [Modificare un evento]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}})).
2. Nel campo **Evento Superiore** scegliete l'evento principale.
3. Fate clic su **Salvare**.

![Il modulo Modifica Incidente con l'evento superiore scelto](/images/docs/it/ereignis/ereignis-uebergeordnet-gewaehlt.webp)

Nell'elenco degli eventi, l'evento compare ora rientrato sotto l'evento principale.

![L'elenco degli eventi: sotto «Unwetter Kanton – Kantonales Führungsorgan» ci sono tre eventi secondari](/images/docs/it/ereignis/ereignisliste-hierarchie.webp)

## Sciogliere il collegamento

1. Nell'evento secondario aprite il modulo **Modifica Incidente**.
2. Scegliete «nessun evento superiore».
3. Fate clic su **Salvare**.

L'evento si trova di nuovo al livello più alto.

## Che cosa si può scegliere

Il campo **Evento Superiore** propone solo eventi che

- sono **aperti**,
- non sono eliminati,
- non hanno a loro volta un evento superiore,
- e non sono l'evento stesso.

I livelli sono **due**: un evento è o evento principale o secondario, mai entrambi. Se un evento ha propri eventi secondari, il suo modulo non mostra affatto il campo **Evento Superiore**. Sciogliete prima il loro collegamento se volete subordinarlo a sua volta.

## Buono a sapersi

- Se chiudete un evento principale, gli eventi secondari restano aperti e collegati a esso.
- Se eliminate un evento principale, l'elenco degli eventi mostra di nuovo i suoi eventi secondari al livello più alto.
