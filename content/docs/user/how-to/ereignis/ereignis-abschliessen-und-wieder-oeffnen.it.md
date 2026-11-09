---
title: "Chiudere e riaprire un evento"
description: "Terminare un evento e, se serve, riaprirlo."
weight: 40
---
Quando un evento è finito, lo chiudete. Vi serve il ruolo **Responsabile** o **Proprietario**. In un evento con **Accesso aperto** ogni utente che ha effettuato l'accesso può chiudere e aprire.

## Chiudere un evento

1. Aprite gli **Incidenti**.
2. Fate clic su **Chiudere** nell'evento.

sitrep chiude subito l'evento e non chiede conferma. L'evento scompare dall'elenco, perché gli eventi chiusi sono nascosti per impostazione predefinita.

## Mostrare gli eventi chiusi

Fate clic su **mostra chiusa**. Con **nascondi chiuso** li nascondete di nuovo. Un evento chiuso ha lo sfondo giallo e mostra l'ora sotto **chiuso**.

![La scheda di un evento chiuso con i pulsanti Accedere, Eliminare e Aprire](/images/docs/it/ereignis/ereignis-karte-geschlossen.webp)

## Che cosa non si può più fare in un evento chiuso

Un evento chiuso si può ancora consultare: con **Accedere** lo aprite e leggete giornale, persone, mezzi e carta. Non si può più cambiare nulla:

- registrare e correggere messaggi,
- sottoporre i messaggi a triage,
- gestire persone e mezzi,
- disegnare sulla carta informativa,
- modificare l'evento stesso.

![L'editore di un evento chiuso con l'avviso che non è possibile modificare](/images/docs/it/ereignis/ereignis-geschlossen-hinweis.webp)

sitrep segnala: «Questo incidente è chiuso. Al momento non è possibile apportare modifiche.» Nel triage appare: «Questo evento è chiuso. Il triage non è più possibile.»

## Riaprire un evento

1. Fate clic su **mostra chiusa**.
2. Fate clic su **Aprire** nell'evento.

L'evento è di nuovo aperto, con tutti i messaggi, le persone, i mezzi e la carta com'erano alla chiusura. Potete ripetere chiusura e apertura quante volte volete.

## Chiudere automaticamente

L'esercizio può impostare che gli eventi vengano chiusi automaticamente dopo un certo numero di giorni. Per impostazione predefinita questo è disattivato. L'impostazione si trova nella [configurazione]({{< relref "/docs/admin/reference/konfiguration" >}}).

## Eliminare un evento chiuso

Solo un evento chiuso si può eliminare: [Eliminare un evento]({{< relref "/docs/user/how-to/ereignis/ereignis-loeschen" >}}).
