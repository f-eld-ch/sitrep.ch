---
title: "Compendio dei mezzi e tabella dei mezzi"
description: "Colonne, stati, dati obbligatori e regole di conteggio del compendio dei mezzi."
weight: 20
---
Il compendio dei mezzi mostra tutti i mezzi d'intervento dell'evento. I dati nascono nel triage, nel passo **Mezzi**. Guida: [Allertare e impiegare i mezzi]({{< relref "/docs/user/how-to/triage/mittel-aufbieten-und-einsetzen" >}}).

Aprite il compendio da **Mezzi** nella navigazione dell'evento.

![Il compendio dei mezzi: in alto un riquadro per formazione con le persone impiegate e i contrassegni di stato, sotto la tabella dei mezzi raggruppata per formazione e luogo](/images/docs/it/triage/mitteltabelle.webp)

## Struttura

I mezzi sono raggruppati per formazione e, sotto, per designazione della formazione o del luogo (per esempio Pompieri, sotto Altdorf). I mezzi di eventi subordinati compaiono come gruppo a sé. Ogni gruppo mostra il numero di persone impiegate.

## Colonne della tabella

| Colonna | Contenuto |
|---|---|
| Mezzo | Formazione, luogo e nome |
| Persone | Numero di persone |
| Stato | Allertato, Pronto, Impiegato o Avvicendato |
| Recapito | Radio, telefono, e-mail o altro, con indicazione (per esempio canale o numero) |
| Allertato | Ora del messaggio con cui il mezzo è stato allertato |
| Pronto | Ora del messaggio con cui è stato segnalato pronto |
| Impiegato | Inizio dell'intervento |
| Terminato / Avvicendato | Fine dell'intervento |
| Compito principale | Incarico |
| Luogo d'impiego | Luogo dell'intervento |

Tutti gli orari sono gli **orari dei messaggi**, non il momento in cui qualcuno ha completato il triage. Un mezzo avvicendato mostra nella riga «Sostituito da» il mezzo successore.

## Stati

| Stato | Significato | Azioni possibili |
|---|---|---|
| Allertato | Il mezzo è allarmato, ma non è ancora arrivato | Segnala pronto |
| Pronto | Il mezzo è arrivato o è pronto | Impiegare, Congedare |
| Impiegato | Il mezzo lavora a un compito | Intervento concluso, Avvicendare, Congedare |
| Avvicendato | L'intervento del mezzo è terminato | Riattivare |

Passaggi:

- Allertato → Pronto → Impiegato
- Impiegato → Pronto (**Intervento concluso**)
- Pronto o Impiegato → Avvicendato (**Avvicendare** o **Congedare**)
- Avvicendato → Allertato (**Riattivare**). La storia d'impiego rimane, compito, luogo d'impiego e avvicendamento dell'intervento precedente vengono azzerati.

Gli interventi precedenti di un mezzo restano visibili come righe aggiuntive.

## Dati richiesti per l'allerta

| Campo | Obbligatorio | Nota |
|---|---|---|
| Formazione | sì | Pompieri, Polizia, Esercito, Protezione civile, Servizi tecnici, Servizi sanitari, Altro |
| Formazione / luogo | sì | per esempio «Altdorf» |
| Denominazione del mezzo | sì | per esempio «Zug 1» |
| Persone | sì, almeno 1 | |

Formazione, luogo e nome formano insieme l'identità del mezzo. Un mezzo attivo con la stessa identità non può essere allertato una seconda volta. Se esiste un mezzo avvicendato con la stessa identità, sitrep offre di riattivarlo.

### Dimensione

sitrep propone la dimensione in base al numero di persone:

| Dimensione | Persone |
|---|---|
| Sezione | 1–5 |
| Gruppo | 6–19 |
| Plotone | 20–60 |
| Compagnia | 61–300 |
| Battaglione | da 301 |

## Dati obbligatori per l'impiego

Un mezzo può essere impiegato solo se **Compito principale** e **Luogo d'impiego** sono compilati. Così la tabella non mostra mai un mezzo in intervento senza incarico.

## Regole di conteggio

Nei numeri dei gruppi contano **solo i mezzi con lo stato Impiegato**. I mezzi allertati e pronti sono indicati a parte come contrassegni di stato. Motivazione: [Conteggio di persone e mezzi]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}}).

## Stampare

Il pulsante **Stampa** produce la tabella per il rapporto o la parete ANSIT. Vedi [Stampare la tabella dei mezzi]({{< relref "/docs/user/how-to/triage/mitteltabelle-drucken" >}}).
