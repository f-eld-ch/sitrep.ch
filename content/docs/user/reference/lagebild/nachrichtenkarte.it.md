---
title: "Carta informativa"
description: "Struttura della carta informativa, stato dei messaggi, linea temporale e dati degli oggetti."
weight: 10
---
La carta informativa è la postazione di lavoro per la carta. La aprite nel menu **Aggiornamento Grafico** con la voce **Carta informativa**.

Il **quadro della situazione** (menu **Aggiornamento Grafico**) è un altro luogo: qui disegnate liberamente su livelli propri. Il livello Carta informativa nel quadro della situazione è di sola lettura. La differenza è spiegata in [Quadro della situazione e carta informativa]({{< relref "/docs/user/explanation/lagebild/lagebild-und-nachrichtenkarte" >}}).

## Struttura della postazione di lavoro

- **A sinistra:** i messaggi che nel triage sono stati assegnati al settore Carta informativa e triaggiati. Sugli schermi piccoli l'elenco riempie la pagina finché non scegliete un messaggio.
- **In alto a destra:** il messaggio scelto e l'azione **Concludi** oppure **Modifica**.
- **In basso a destra:** la carta.

![La postazione di lavoro della carta informativa con elenco dei messaggi, messaggio e carta](/images/docs/it/lagebild/nachrichtenkarte-arbeitsplatz.webp)

## Pulsanti e contrassegni

| Elemento | Significato |
|---|---|
| Mostra non disegnati (n) / Mostra tutti | Filtro dell'elenco. Predefinito: solo i messaggi ancora da disegnare. |
| Concludi | Contrassegna il messaggio come disegnato |
| Disegnato | Il messaggio è disegnato e bloccato |
| Modifica / Fatto | Sblocca il disegno di un messaggio disegnato, rispettivamente lo blocca di nuovo |
| Apri messaggio | Apre il messaggio |
| Questo messaggio | Evidenzia sulla carta le modifiche del messaggio scelto |
| Ripristina | Riporta un oggetto che è stato rimosso con questo messaggio |

Evidenziazione: verde aggiunto, azzurro modificato, rosso chiaro rimosso.

## Stato di un messaggio

| Stato | Significato |
|---|---|
| ancora da disegnare | Triaggiato, assegnato al settore Carta informativa, non ancora concluso |
| Disegnato | Concluso, disegno bloccato |

## Linea temporale nel quadro della situazione

Nel quadro della situazione la carta mostra lo stato in un determinato momento.

| Elemento | Significato |
|---|---|
| In diretta | Stato attuale della carta |
| Stato alle HH:MM | Stato della carta dopo il messaggio scelto |
| Messaggio precedente / Messaggio successivo | Salta da un messaggio all'altro |
| Momento nello svolgimento dell'intervento | Cursore su tutto l'intervento |

Tranne che su **In diretta**, la carta è di sola lettura.

![Il quadro della situazione con la linea temporale sul bordo inferiore della carta](/images/docs/it/lagebild/lagebild-zeitstrahl.webp)

## Dati degli oggetti

A seconda del segno sono disponibili questi campi:

| Campo | Contenuto |
|---|---|
| Designazione | Designazione dell'oggetto |
| Luogo | Luogo |
| Informazioni aggiuntive | Altre indicazioni |
| Descrizione / Particolari | Testo libero |
| Numero di persone | Numero delle persone |
| Numero di pericolo | Numero Kemler |
| Numero della sostanza ONU | Numero ONU di quattro cifre |
| Nome della sostanza | Nome della sostanza |
| Valido dal | Momento da cui vale la modifica. Nel quadro della situazione lo impostate voi, sulla carta informativa è l'ora del messaggio. |

Con **Fissare il segno** e **Rilasciare il segno fissato** bloccate e sbloccate la posizione di un segno.

## Limitazioni

- Gli interventi senza carta informativa mostrano «Questo intervento non ha una carta informativa».
- Negli eventi conclusi **Concludi** e **Modifica** non sono possibili.
- Gli oggetti non salvati vanno persi se lasciate la pagina. sitrep chiede conferma prima.

## Vedi anche

- [Disegnare un messaggio sulla carta informativa]({{< relref "/docs/user/how-to/lagebild/nachrichtenkarte-zeichnen" >}})
- [Disegnare un livello proprio nel quadro della situazione]({{< relref "/docs/user/how-to/lagebild/lagebild-zeichnen" >}})
- [Carta informativa e tempo]({{< relref "/docs/user/explanation/lagebild/nachrichtenkarte-und-zeit" >}})
