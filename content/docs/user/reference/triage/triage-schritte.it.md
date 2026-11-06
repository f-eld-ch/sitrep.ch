---
title: "Vista del triage e passi"
description: "Struttura della vista Triage, i passi con i loro campi, gli stati e le scorciatoie da tastiera."
weight: 30
---
Questa pagina descrive la vista Triage. La aprite da **Triage** nell'area giornale d'intervento. Come procedere è spiegato nella guida [Triare un messaggio]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}).

![La vista Triage: elenco dei messaggi a sinistra, messaggio scelto e barra dei passi a destra, in basso Ha bisogno di più informazioni, Modulo di notifica e Avanti](/images/docs/it/triage/triage-1-meldung.webp)

## Struttura

- **Elenco dei messaggi** con i filtri «Non triageto», «Notizie chiave» e «I miei».
- **Area del triage** con il messaggio scelto in alto, la barra dei passi e il contenuto del passo.
- **Piè di pagina** con **Indietro**, **Avanti**, la stampa del modulo di notifica e, nell'ultimo passo, **Completare il triage**.

La barra dei passi è cliccabile. Potete saltare a qualsiasi passo.

## Passi

| Passo | Quando è visibile | Contenuto |
|---|---|---|
| Messaggio | solo per messaggi non ancora triati | Verificare il messaggio: mittente, destinatario, ora e contenuto. Qui si trova anche **Ha bisogno di più informazioni**. |
| Flusso dei messaggi | sempre | Attivare o disattivare **Notizie chiave** e definire i settori che ricevono il messaggio |
| Persone | sempre | Registrare la variazione per categoria |
| Mezzi | sempre | Allertare e scegliere i mezzi e cambiarne lo stato |

Per un messaggio già triato si apre prima un riepilogo con flusso dei messaggi, persone e mezzi. Con **Modificare il triage** lo modificate.

![Il riepilogo di un messaggio triato con flusso dei messaggi e il pulsante Modificare il triage](/images/docs/it/triage/triage-zusammenfassung.webp)

### Flusso dei messaggi

- **Notizie chiave:** l'interruttore imposta la priorità su «importante» e assegna il messaggio a tutti i settori dell'evento. Se lo disattivate di nuovo, tornano le assegnazioni precedenti.
- **Settori:** ogni settore è un'etichetta con pulsante più o meno. I settori che ricevono il messaggio hanno un pulsante meno, gli altri un pulsante più.

I messaggi assegnati al settore **Carta informativa** compaiono poi nella [carta informativa]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}}).

### Persone

Un contatore per categoria, a destra l'anteprima della variazione. Vedi [Compendio delle persone]({{< relref "/docs/user/reference/triage/personenkategorien" >}}). Le variazioni vengono salvate non appena lasciate il passo con **Avanti**.

### Mezzi

Elenco dei mezzi collegati a questo messaggio (la scheda in alto con **modificare** e la croce), campo di ricerca **Cerca mezzi…**, il pulsante **Allertare nuovo mezzo** e un'area **Avvicendato** con i mezzi che si possono riattivare. Vedi [Compendio dei mezzi e tabella dei mezzi]({{< relref "/docs/user/reference/triage/mitteltabelle" >}}).

## Stato di triage di un messaggio

| Stato | Significato |
|---|---|
| in attesa di | Non ancora triato |
| più informazioni necessarie | Serve una richiesta di chiarimento, il triage non è ancora completato |
| triageto | Triage completato |
| ripristina | Il triage è stato annullato, il messaggio è di nuovo aperto |

Non appena un messaggio è **triageto**, la sua ora non si può più modificare. Il motivo è spiegato in [Carta informativa e tempo]({{< relref "/docs/user/explanation/lagebild/nachrichtenkarte-und-zeit" >}}).

## Dopo il completamento

sitrep mostra «Triage salvato» con il numero del messaggio. Da lì passate al messaggio successivo con **Prossimo messaggio in attesa (n. …)** oppure tornate indietro con **Modificare il triage**. Quando tutti i messaggi sono triati compare «Tutto triaggiato!».

## Limitazioni

- In un evento chiuso il triage non è più possibile.
- L'orario del messaggio non può essere più di cinque minuti nel futuro.
- Se non c'è ancora alcun messaggio, la vista mostra un avviso e un pulsante verso l'editore. I messaggi si creano nell'editore.

## Scorciatoie da tastiera

| Scorciatoia | Azione |
|---|---|
| Ctrl + ↑ | Messaggio precedente |
| Ctrl + ↓ | Messaggio successivo |
| Ctrl + ↵ | Passo successivo, nell'ultimo passo completare il triage |
| Esc | Annullare la selezione |

L'elenco si apre nella vista Triage con il simbolo della tastiera in alto a destra.
