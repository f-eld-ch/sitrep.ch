---
title: "Triare un messaggio"
description: "Verificare un messaggio, assegnarlo al flusso dei messaggi e completare il triage."
weight: 10
---
Questa guida mostra come triare un messaggio. Persone e mezzi si registrano nei passi intermedi, per i quali esistono guide a parte. Un'introduzione guidata è il tutorial [Il vostro primo triage]({{< relref "/docs/user/tutorials/triage/erste-triage" >}}).

Premessa: nell'evento c'è almeno un messaggio. I messaggi si creano nell'**editore**, vedi [Registrare un messaggio]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

## Scegliere il messaggio

1. Aprite **Triage** nel giornale d'intervento.
2. Scegliete un messaggio dall'elenco. All'inizio sitrep seleziona il messaggio ancora aperto più vecchio.
3. Con il filtro **Non triageto** l'elenco mostra solo i messaggi aperti.

## Verificare il messaggio

Questo passo compare solo per i messaggi non ancora triati.

1. Controllate mittente, destinatario, ora e contenuto e correggete ciò che non torna.
2. Se mancano informazioni, cliccate su **Ha bisogno di più informazioni**. Il messaggio resta aperto e riceve lo stato «più informazioni necessarie».
3. Altrimenti cliccate su **Avanti**.

![Il passo Verifica messaggio con i dati del messaggio e i pulsanti Ha bisogno di più informazioni e Avanti](/images/docs/it/triage/triage-1-meldung.webp)

## Definire il flusso dei messaggi

1. Scegliete i settori che devono ricevere il messaggio. Con il pulsante più di un'etichetta assegnate il settore, con il pulsante meno lo togliete.
2. Se il messaggio deve raggiungere tutti, attivate **Notizie chiave**. La priorità diventa «importante» e tutti i settori ricevono il messaggio.
3. Assegnate il messaggio al settore **Carta informativa** se qualcosa va disegnato sulla carta.
4. Cliccate su **Avanti**.

![Il passo Flusso dei messaggi con l'interruttore Notizie chiave e i settori come etichette con pulsante più o meno](/images/docs/it/triage/triage-2-meldefluss.webp)

## Persone e mezzi

Se il messaggio riguarda persone o mezzi d'intervento, registrateli ora. Altrimenti cliccate su **Avanti**.

- [Registrare le persone durante il triage]({{< relref "/docs/user/how-to/triage/personen-erfassen" >}})
- [Allertare e impiegare i mezzi]({{< relref "/docs/user/how-to/triage/mittel-aufbieten-und-einsetzen" >}})

## Completare il triage

1. Nell'ultimo passo cliccate su **Completare il triage**.
2. sitrep mostra «Triage salvato». Cliccate su **Prossimo messaggio in attesa** per proseguire.

![La conferma «Triage salvato» con Prossimo messaggio in attesa, Modificare il triage e Modulo di notifica](/images/docs/it/triage/triage-gespeichert.webp)

Tutto viene salvato in una volta sola. Con **Ctrl + ↵** passate al passo successivo oppure, nell'ultimo passo, completate il triage.

## Modificare un triage a posteriori

1. Scegliete dall'elenco il messaggio già triato.
2. Nel riepilogo cliccate su **Modificare il triage**.
3. Cambiate ciò che serve e completate di nuovo il triage.

![Il riepilogo di un messaggio triato con il flusso dei messaggi e il pulsante Modificare il triage](/images/docs/it/triage/triage-zusammenfassung.webp)

Dopo il triage non potete più modificare l'ora del messaggio.

## Se qualcosa non funziona

| Messaggio in sitrep | Causa |
|---|---|
| «Questo evento è chiuso. Il triage non è più possibile.» | L'evento è stato chiuso. |
| «L'orario non può più essere modificato perché il messaggio è già stato smistato.» | L'ora di un messaggio triato è bloccata. |
| «L'orario del messaggio non può essere più di cinque minuti nel futuro.» | Correggete l'ora nel passo **Messaggio**. |

Tutti i campi e gli stati sono nel riferimento [Vista Triage e passi]({{< relref "/docs/user/reference/triage/triage-schritte" >}}).
