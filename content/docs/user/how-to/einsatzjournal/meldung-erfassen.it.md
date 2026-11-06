---
title: "Registrare un messaggio"
description: "Registrare un messaggio nell'editor secondo il tipo di comunicazione."
weight: 10
---
Registrate ogni messaggio nell'**editore** non appena arriva. Un'introduzione guidata è offerta dal tutorial [Registrare il vostro primo messaggio]({{< relref "/docs/user/tutorials/einsatzjournal/erste-meldung" >}}). I campi sono elencati nel riferimento [Campi dell'editor]({{< relref "/docs/user/reference/einsatzjournal/editor-felder" >}}).

## Procedura generale

1. Aprite **editore** nel giornale d'intervento.
2. Scegliete la **comunicazione**: Telefono, radio, e-mail o Altro.
3. Compilate destinatario, mittente, ora e contenuti (vedi sotto, secondo il tipo).
4. Controllate l'**anteprima**.
5. Fate clic su **salvare**.

Il pulsante **salvare** funziona solo quando tutti i campi obbligatori sono compilati. sitrep numera il messaggio automaticamente. Il messaggio riceve lo stato di triage **in attesa di**.

## Telefono

1. Inserite il **destinatario** e il suo numero di telefono.
2. Inserite il **chiamante** e il suo numero di telefono.

Entrambi i numeri sono obbligatori.

![L'editor con un messaggio telefonico: destinatario e chiamante con numeri di telefono](/images/docs/it/einsatzjournal/editor-telefon.webp)

## Radio

1. Scegliete il **canale**. Vale per destinatario e mittente.
2. Inserite **destinatario** e **mittente**.

La radio è l'impostazione predefinita quando aprite l'editor.

![L'editor con un messaggio radio: canale, destinatario e mittente](/images/docs/it/einsatzjournal/editor-funk.webp)

## E-mail

1. Inserite il **mittente dell'e-mail** e il suo indirizzo e-mail.
2. Inserite il **Destinatario dell'e-mail** e il suo indirizzo e-mail.

Entrambi gli indirizzi sono obbligatori.

![L'editor con un'e-mail: mittente e destinatario dell'e-mail con indirizzi](/images/docs/it/einsatzjournal/editor-email.webp)

## Altro

Per i messaggi che arrivano di persona o per un'altra via, inserite **mittente** e **destinatario**. In **particolari** potete aggiungere come è arrivato il messaggio. I particolari sono facoltativi.

![L'editor con la comunicazione Altro: mittente con particolari, destinatario](/images/docs/it/einsatzjournal/editor-andere.webp)

## Impostare l'ora

- Se lasciate vuoto il campo **volta**, vale l'ora del salvataggio.
- Se il messaggio è arrivato prima che lo registriate, inserite l'ora di arrivo.
- L'ora non può essere più di cinque minuti nel futuro.

L'ora è importante: persone, mezzi e carta informativa si riferiscono poi a quest'ora. Dopo il triage non può più essere modificata. Maggiori informazioni in [Giornale, triage e carta]({{< relref "/docs/user/explanation/einsatzjournal/journal-und-karte" >}}).

## Riprendere nomi e numeri

Mentre scrivete, sitrep propone nomi, numeri e canali radio tratti da messaggi precedenti. Se scegliete una proposta, risparmiate fatica e evitate errori di battitura. Usare la stessa grafia per lo stesso mittente facilita poi il filtraggio.

## Formattare i contenuti

Il campo **contenuti** è un editor Markdown con barra degli strumenti, per esempio per grassetto, elenchi o titoli. L'**anteprima** sotto il modulo mostra il risultato. Sotto pressione scrivete semplicemente il testo: la formattazione è facoltativa.

## Dopo

Il messaggio è nel giornale d'intervento e attende il triage: [Triare un messaggio]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}). I file si aggiungono con [Aggiungere un allegato]({{< relref "/docs/user/how-to/einsatzjournal/anhang-hinzufuegen" >}}).
