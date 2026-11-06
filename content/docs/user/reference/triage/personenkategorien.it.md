---
title: "Compendio delle persone"
description: "Le cinque categorie di persone, come nascono i numeri e dove vengono mostrati."
weight: 10
---
Il compendio delle persone mostra quante persone sono coinvolte nell'evento. I numeri nascono esclusivamente nel triage: nel passo **Persone** registrate la variazione che porta un messaggio. Guida: [Registrare le persone durante il triage]({{< relref "/docs/user/how-to/triage/personen-erfassen" >}}).

Aprite il compendio da **Compendio delle persone** nella navigazione dell'evento.

![Il compendio delle persone con le cinque categorie e la suddivisione per l'evento, evento di esempio «Unwetter Bergdorf – Murgang Dorfbach»](/images/docs/it/triage/personenuebersicht.webp)

## Categorie

L'ordine è lo stesso nel triage e nel compendio.

| Categoria | Significato |
|---|---|
| Feriti | Persone ferite |
| Dispersi | Persone di cui non si sa dove si trovino |
| Senzatetto | Persone senza alloggio |
| Intrappolati | Persone che non possono liberarsi da sole |
| Deceduti | Persone decedute |

Ogni categoria ha un segno convenzionale del set di segni convenzionali dell'UFPP, che compare accanto al numero nel triage e nel compendio.

## Come vengono calcolati i numeri

- Per ogni messaggio registrate una **variazione** (delta), non una situazione. Esempio: `+3` per Feriti, `−1` per Dispersi.
- La situazione di una categoria è la somma di tutte le variazioni di tutti i messaggi triati.
- La situazione di una categoria non può mai scendere sotto 0. Nel triage la variazione si può ridurre solo fino a quando la situazione resta a 0.
- Una variazione di 0 non viene salvata, a meno che un triage precedente dello stesso messaggio avesse già dei valori. In quel caso il vecchio valore viene annullato.

## Struttura della pagina

| Area | Contenuto |
|---|---|
| Totali | Somma dell'evento e di tutti gli eventi subordinati |
| Questo evento | I numeri dell'evento stesso |
| Eventi subordinati | Per ogni evento subordinato una scheda con i suoi numeri |

Finché non è stato triato alcun messaggio con persone, la pagina mostra «Nessuna vittima registrata» e un pulsante per il triage.

## Vedi anche

- [Passi del triage]({{< relref "/docs/user/reference/triage/triage-schritte" >}})
- [Perché si registrano variazioni e non situazioni]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}})
