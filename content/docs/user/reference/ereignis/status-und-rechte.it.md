---
title: "Stato e diritti di un evento"
description: "Gli stati aperto, chiuso ed eliminato e chi può eseguire quale azione."
weight: 30
---
Un evento ha uno **stato** e ogni azione richiede un **ruolo**. I ruoli stessi li descrive il riferimento [Controllo degli accessi]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).

## Stato

| Stato | Significato | Nell'elenco degli eventi |
|---|---|---|
| **aperto** | L'evento è in corso. Tutto si può registrare e modificare. | scheda normale |
| **chiuso** | L'evento è terminato. Si può consultare, ma non più modificare. | scheda gialla, solo con **mostra chiusa** |
| **eliminato** | L'evento è rimosso da sitrep. I suoi dati sono archiviati nella banca dati. | non più visibile |

Transizioni:

- aperto → chiuso: **Chiudere**
- chiuso → aperto: **Aprire**
- chiuso → eliminato: **Eliminare**

Un evento aperto non si può eliminare. Un evento eliminato non si può ripristinare in sitrep.

## Chi può fare che cosa

| Azione | Ruolo minimo | Stato dell'evento |
|---|---|---|
| Creare un evento | ogni utente che ha effettuato l'accesso (diventa Proprietario) | – |
| Consultare l'evento, **Accedere** | Lettore | aperto o chiuso |
| Registrare messaggi, sottoporli a triage, gestire persone e mezzi, disegnare la carta | Editore | aperto |
| Cambiare nome, posizione e settori (**Modificare**) | Editore | aperto |
| Collegare o sciogliere l'evento superiore | Editore | aperto |
| **Chiudere** | Responsabile | aperto |
| **Aprire** | Responsabile | chiuso |
| Gestire l'accesso | Responsabile | – |
| **Eliminare** | Proprietario | chiuso |
| Ripristinare un evento eliminato | non possibile in sitrep, solo con accesso alla banca dati | eliminato |

In un evento con **Accesso aperto** ogni utente che ha effettuato l'accesso può fare tutto tranne **eliminare**. Anche lì questa azione resta riservata al proprietario.

## Che cosa è bloccato in un evento chiuso

- registrare e correggere messaggi
- sottoporre i messaggi a triage
- gestire persone e mezzi
- disegnare sulla carta informativa e concludere i messaggi
- modificare l'evento

Consultare resta possibile. Se tentate di cambiare qualcosa, sitrep segnala: «L'incidente non è aperto.»

## Messaggi di errore

| Messaggio | Causa |
|---|---|
| «L'incidente non è aperto.» | Cambiate qualcosa in un evento chiuso. |
| «L'incidente deve essere chiuso prima di eseguire questa azione.» | Eliminate un evento ancora aperto. |
| «L'incidente è già stato eliminato.» | L'evento è già eliminato. |
| «L'evento superiore selezionato non può essere utilizzato.» | L'evento principale scelto non soddisfa le condizioni, vedi [Collegare un evento superiore]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}). |
| «Non si dispone dell'autorizzazione per eseguire questa azione.» | Il vostro ruolo non basta. |

Perché un evento si sviluppa così lo spiega [Il ciclo di vita di un evento]({{< relref "/docs/user/explanation/ereignis/lebenszyklus-eines-ereignisses" >}}).
