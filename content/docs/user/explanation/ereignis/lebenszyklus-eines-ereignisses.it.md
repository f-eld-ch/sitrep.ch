---
title: "Il ciclo di vita di un evento"
description: "Perché un evento può essere aperto, chiuso ed eliminato e che cosa si può annullare."
weight: 10
---
Un **evento** è il quadro in cui avviene tutto il resto: messaggi, triage, persone, mezzi e carta appartengono sempre a un evento. Attraversa tre stazioni.

## Aperto

Finché un evento è **aperto**, lo stato maggiore vi lavora. I messaggi vengono registrati e sottoposti a triage, persone e mezzi aggiornati, la carta viene disegnata. Nome, posizione e settori si possono cambiare.

## Chiuso

Quando l'intervento è finito, l'evento viene **chiuso**. Resta completamente conservato e si può consultare, ma non più modificare. Così la situazione rimane quella della chiusura.

La chiusura è espressamente **reversibile**: chi ha il ruolo di Responsabile può riaprire l'evento in qualsiasi momento. L'idea è che un evento possa essere chiuso troppo presto o servire ancora in seguito. Non si perde nulla.

## Eliminato

Eliminare è l'ultima stazione ed è volutamente più difficile da raggiungere delle altre:

- Si può fare solo con un evento **chiuso**. Chi vuole eliminare deve quindi prima chiuderlo.
- È riservato al **Proprietario**, anche se l'evento è aperto a tutti.
- In sitrep **non si può annullare**.

Eliminato non significa che i dati vengano distrutti: i dati di un evento eliminato restano archiviati nella banca dati. In sitrep stesso non si può ripristinare, lo si può fare solo con accesso alla banca dati. In questo caso rivolgetevi all'amministrazione.

Per questo, nell'uso quotidiano vale: lasciate **chiuso** un evento terminato. Eliminate solo se deve davvero sparire, per esempio per un'esercitazione che non viene conservata.

## Che cosa può impostare in più l'esercizio

L'amministrazione può impostare sitrep in modo che gli eventi vengano **chiusi automaticamente** dopo un certo numero di giorni di apertura e che gli eventi chiusi da molto tempo vengano **archiviati**. Entrambe le funzioni sono disattivate per impostazione predefinita. Le impostazioni si trovano nella [configurazione]({{< relref "/docs/admin/reference/konfiguration" >}}).

## Chi può fare che cosa

Il fatto che chiudere, riaprire ed eliminare richiedano ruoli diversi è voluto: gli editori conducono l'evento, i responsabili lo terminano e lo riaprono, solo il proprietario elimina. La tabella è in [Stato e diritti di un evento]({{< relref "/docs/user/reference/ereignis/status-und-rechte" >}}). Perché il controllo degli accessi è concepito così lo spiega [Come è pensato il controllo degli accessi]({{< relref "/docs/user/explanation/allgemein/zugriffssteuerung" >}}).
