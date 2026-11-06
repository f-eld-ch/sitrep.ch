---
title: "Conteggio di persone e mezzi"
description: "Perché si registrano variazioni e non situazioni, e perché contano solo i mezzi impiegati."
weight: 20
---
## Variazioni invece di situazioni

Un messaggio dice raramente «ora ci sono 17 feriti». Dice «altri tre feriti leggeri». Per questo sitrep registra per ogni messaggio la **variazione**: `+3`, `−1`. La situazione è la somma di tutte le variazioni.

Ne derivano tre conseguenze:

- **Verificabile.** Ogni numero si può ricondurre ai messaggi che l'hanno modificato.
- **Correggibile.** Se un messaggio viene modificato a posteriori, cambia solo il suo contributo. Il resto dei numeri resta coerente.
- **Nessun confronto.** Due persone che lavorano contemporaneamente a messaggi diversi non si sovrascrivono. Entrambe le variazioni contano.

Una persona ritrovata e ferita è una doppia variazione: un disperso in meno, un ferito in più. Il fatto che i contatori non scendano mai sotto 0 impedisce che un annullamento tolga più persone di quante ce ne siano.

## Contano solo i mezzi impiegati

Nei numeri della tabella dei mezzi contano solo i mezzi in intervento. I mezzi allertati e pronti sono indicati a parte come contrassegni di stato.

Il motivo è la forza d'intervento. Un mezzo allertato non è ancora sul posto e uno pronto non lavora ancora. Se la somma li includesse, lo stato maggiore sopravvaluterebbe ciò che viene realmente fatto sul posto. Nell'esempio: l'esercito è allertato con 40 persone, ma non è ancora impiegato. Il suo contributo alla somma è 0 finché non viene impiegato.

## Ogni variazione ha l'ora del messaggio

Ogni modifica a un mezzo, dall'allerta all'avvicendamento, viene registrata con l'ora del messaggio, non con il momento in cui qualcuno l'ha digitata. Così la tabella è corretta anche se un messaggio viene triato solo più tardi.

## Dati obbligatori e identità

- Un mezzo può essere impiegato solo se compito principale e luogo d'impiego sono noti. Così la tabella non mostra mai un mezzo in intervento senza incarico.
- Formazione, luogo e nome formano insieme l'identità. Un mezzo attivo non può essere registrato due volte. Se un mezzo avvicendato ritorna, lo riattivate invece di registrarlo di nuovo. Così la sua storia d'impiego resta continua.

## Avvicendamento

Quando un mezzo viene avvicendato da un altro, il nuovo assume compito e luogo d'impiego. Il mezzo avvicendato resta nella tabella con la sua storia, in modo che l'andamento rimanga visibile.

## Vedi anche

- [Compendio delle persone]({{< relref "/docs/user/reference/triage/personenkategorien" >}})
- [Compendio dei mezzi e tabella dei mezzi]({{< relref "/docs/user/reference/triage/mitteltabelle" >}})
