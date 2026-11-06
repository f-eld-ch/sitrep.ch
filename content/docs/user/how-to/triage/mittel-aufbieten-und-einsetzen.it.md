---
title: "Allertare e impiegare i mezzi"
description: "Allertare, impiegare, avvicendare, congedare e riattivare un mezzo d'intervento."
weight: 30
---
I mezzi si gestiscono nel passo **Mezzi** del triage. Ogni modifica viene registrata con l'**ora del messaggio** che state triando. Stati e passaggi sono nel riferimento [Compendio dei mezzi e tabella dei mezzi]({{< relref "/docs/user/reference/triage/mitteltabelle" >}}).

Tutte le azioni iniziano allo stesso modo: aprite il messaggio nel **Triage** e andate al passo **Mezzi**.

## Scegliere un mezzo per il messaggio

Se il messaggio riguarda un mezzo già registrato:

1. Cercatelo nel campo **Cerca mezzi…** oppure cliccate su **Mostra altri …** (con il numero).
2. Cliccate sul mezzo (suggerimento: «Aggiungi al messaggio»). Ora è collegato al messaggio e compare in cima all'elenco.
3. Cliccate su **modificare** per aprire la sua scheda. Con la croce togliete di nuovo il mezzo dal messaggio.

![L'elenco dei mezzi di un messaggio: il mezzo appena allertato è in cima, sotto gli altri mezzi dell'evento](/images/docs/it/triage/triage-4-mittel-liste.webp)

## Allertare un mezzo

1. Cliccate su **Allertare nuovo mezzo**.
2. Scegliete la **Formazione**.
3. Inserite la **Formazione / luogo** (per esempio `Altdorf`) e la **Denominazione** del mezzo (per esempio `Zug 1`).
4. Indicate il numero di **Persone**. sitrep propone la dimensione (sezione, gruppo, plotone …).
5. Cliccate su **Allertare mezzo**.

Il mezzo riceve lo stato **Allertato** ed è collegato al messaggio.

![Il modulo per allertare un mezzo: formazione, luogo, denominazione, persone e la dimensione Gruppo come proposta](/images/docs/it/triage/triage-4-mittel-aufbieten.webp)

Se il mezzo esiste già, sitrep segnala un errore. Se è stato avvicendato, sitrep offre di [riattivarlo](#riattivare-un-mezzo-avvicendato).

## Segnalare un mezzo pronto

1. [Scegliete il mezzo allertato](#scegliere-un-mezzo-per-il-messaggio) e apritelo con **modificare**.
2. Se serve, inserite il [recapito](#gestire-il-recapito).
3. Cliccate su **Segnala pronto**. La scheda si chiude.

![La scheda di un mezzo allertato con il campo Contatto, il pulsante Segnala pronto e Correggere i dati](/images/docs/it/triage/triage-mittel-aufgeboten.webp)

## Impiegare un mezzo

1. Aprite il mezzo pronto con **modificare**.
2. Inserite il **Compito principale** e il **Luogo d'impiego**. Entrambi sono obbligatori.
3. Cliccate su **Impiegare**.

Se manca un'indicazione, il pulsante non fa nulla e il campo viene segnato come obbligatorio.

![La scheda di un mezzo pronto con compito principale, luogo d'impiego e i pulsanti Impiegare e Congedare](/images/docs/it/triage/triage-mittel-einsetzen.webp)

## Concludere l'intervento o riassegnare il mezzo

- **Intervento concluso** riporta il mezzo allo stato **Pronto**.
- Se il mezzo deve ricevere un nuovo compito, concludete l'intervento, inserite il nuovo compito principale e il nuovo luogo d'impiego e cliccate su **Impiegare**.

## Avvicendare un mezzo

1. Aprite il mezzo impiegato con **modificare**.
2. In **Sostituito da** scegliete il mezzo che subentra. Deve essere già registrato e non deve essere avvicendato.
3. Cliccate su **Avvicendare**.

![La scheda di un mezzo impiegato con la scelta Sostituito da e i pulsanti Intervento concluso, Avvicendare e Congedare](/images/docs/it/triage/triage-mittel-abloesen.webp)

Il mezzo subentrante assume compito e luogo d'impiego e viene impiegato. Il mezzo avvicendato riceve lo stato **Avvicendato** e resta nella tabella dei mezzi con la sua storia d'impiego.

## Congedare un mezzo

Cliccate su **Congedare** per un mezzo pronto o impiegato. Il mezzo riceve lo stato **Avvicendato**, senza che venga indicato un successore.

## Riattivare un mezzo avvicendato

Negli interventi di più giorni un mezzo avvicendato può tornare.

1. Nel passo **Mezzi** aprite, sotto l'elenco, l'area **Avvicendato**. Compare appena ci sono mezzi avvicendati non collegati a questo messaggio.
2. Cliccate su **Riattivare** accanto al mezzo.

![L'area Avvicendato sotto l'elenco dei mezzi con un mezzo avvicendato e il pulsante Riattivare](/images/docs/it/triage/triage-mittel-abgeloest.webp)

Il mezzo è di nuovo **Allertato**. Compito, luogo d'impiego e avvicendamento dell'intervento precedente vengono azzerati, la storia d'impiego rimane.

## Gestire il recapito

1. Aprite il mezzo con **modificare**.
2. Scegliete il tipo (telefono, radio o altro) e inserite l'indicazione, per esempio il canale radio o il numero.
3. Confermate l'indicazione dove sitrep lo richiede.

Per un mezzo allertato il campo **Contatto** si trova direttamente nel mezzo. Per i mezzi pronti e impiegati lo trovate sotto **Correggere i dati**.

## Correggere nome, contatto o numero di persone

1. Aprite il mezzo con **modificare** e cliccate su **Correggere i dati**.
2. Modificate nome, contatto o numero di persone e cliccate su **salvare**.

![La scheda con i dati aperti: denominazione del mezzo, contatto e persone, con salvare e Annulla](/images/docs/it/triage/triage-mittel-angaben-korrigieren.webp)

Un mezzo avvicendato non può più essere modificato. Il numero di persone deve essere un numero intero di almeno 1.
