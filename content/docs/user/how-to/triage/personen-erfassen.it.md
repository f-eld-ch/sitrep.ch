---
title: "Registrare le persone durante il triage"
description: "Registrare la variazione del numero di persone e correggere una registrazione."
weight: 20
---
Nel passo **Persone** registrate soltanto la novità riportata dal messaggio. Il compendio delle persone calcola da queste variazioni la situazione attuale. Il perché è spiegato in [Conteggio di persone e mezzi]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}}).

## Registrare le persone

1. Aprite il messaggio nel **Triage** e andate al passo **Persone**.
2. Impostate la variazione per ogni categoria, con i pulsanti **+** e **−** o digitandola.
3. Controllate a destra l'anteprima della variazione.
4. Cliccate su **Avanti**. Solo ora viene salvato.

![Il passo Persone: tre feriti registrati, a destra l'anteprima della variazione](/images/docs/it/triage/triage-3-personen.webp)

## Esempi

| Il messaggio dice | Voi registrate |
|---|---|
| I servizi sanitari segnalano altri tre feriti leggeri. | Feriti `+3` |
| Una persona dispersa è stata ritrovata, è ferita. | Dispersi `−1`, Feriti `+1` |
| Due persone sono state recuperate morte. | Deceduti `+2` |

Non registrate la situazione complessiva. La situazione complessiva la mostra il [compendio delle persone]({{< relref "/docs/user/reference/triage/personenkategorien" >}}).

## Correggere una registrazione

1. Scegliete il messaggio già triato e cliccate su **Modificare il triage**.
2. Aprite il passo **Persone**. I valori della registrazione precedente sono già nel contatore.
3. Cambiate il valore, per annullarlo riportatelo a 0, e cliccate su **Avanti**.
4. Completate il triage.

## Avvertenze

- Il contatore non può essere ridotto oltre quanto consente la situazione attuale. Una situazione inferiore a 0 non è possibile.
- Se il messaggio non riguarda persone, lasciate tutti i contatori a 0 e cliccate su **Avanti**.
- Le segnalazioni di errore compaiono nel passo stesso, senza che i vostri inserimenti vadano persi.
