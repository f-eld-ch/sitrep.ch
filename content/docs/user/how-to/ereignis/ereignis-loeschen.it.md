---
title: "Eliminare un evento"
description: "Rimuovere un evento chiuso dall'elenco degli eventi."
weight: 50
---
{{< note type="warning" >}}
Prima di eliminare sitrep **non chiede conferma**. Un evento eliminato scompare dall'elenco degli eventi e **non si può ripristinare in sitrep**. I dati dell'evento restano archiviati nella banca dati. Possono recuperarli solo l'esercizio, con accesso alla banca dati.
{{< /note >}}

Eliminare è raramente necessario. Se volete solo togliere di mezzo un evento terminato, lasciatelo **chiuso**: è nascosto per impostazione predefinita e in qualsiasi momento lo potete ritrovare.

## Condizioni

- L'evento è **chiuso**. Un evento aperto va prima chiuso: [Chiudere e riaprire un evento]({{< relref "/docs/user/how-to/ereignis/ereignis-abschliessen-und-wieder-oeffnen" >}}).
- Siete **Proprietario** dell'evento. Questo vale anche con Accesso aperto: solo il proprietario vede il pulsante **Eliminare**.

## Eliminare un evento

1. Aprite gli **Incidenti** e fate clic su **mostra chiusa**.
2. Fate clic su **Eliminare** nell'evento chiuso.

L'evento scompare subito dall'elenco.

![L'elenco degli eventi dopo l'eliminazione: l'evento non vi compare più](/images/docs/it/ereignis/ereignisliste-nach-loeschen.webp)

## Che cosa succede all'evento

- Non compare più nell'elenco degli eventi, nemmeno con **mostra chiusa**.
- I dati (messaggi, persone, mezzi, carta) restano archiviati nella banca dati. In sitrep stesso non c'è modo di recuperare l'evento.
- Se era un evento principale, i suoi eventi secondari si trovano di nuovo al livello più alto dell'elenco.

## Un evento eliminato per errore

Rivolgetevi all'amministrazione della vostra installazione di sitrep. Un evento eliminato si può ripristinare solo con accesso alla banca dati.

Per il contesto: [Il ciclo di vita di un evento]({{< relref "/docs/user/explanation/ereignis/lebenszyklus-eines-ereignisses" >}}).
