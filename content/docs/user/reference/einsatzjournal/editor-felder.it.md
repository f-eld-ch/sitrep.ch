---
title: "Campi dell'editor"
description: "Campi, dati obbligatori e regole dell'editor e del modulo di notifica."
weight: 10
---
Nell'**editore** registrate i messaggi. Istruzioni: [Registrare un messaggio]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

![L'editor con comunicazione, destinatario, chiamante, ora, contenuti, allegati e anteprima](/images/docs/it/einsatzjournal/editor-telefon.webp)

## Campi secondo il tipo di comunicazione

| Comunicazione | Primo campo | Secondo campo | Dato supplementare |
|---|---|---|---|
| Telefono | destinatario | chiamante | un **numero di telefono** ciascuno, obbligatorio |
| radio | destinatario | mittente | un **canale** per entrambi |
| e-mail | mittente dell'e-mail | Destinatario dell'e-mail | un **indirizzo e-mail** ciascuno, obbligatorio |
| Altro | mittente | destinatario | **particolari**, facoltativi |

All'apertura dell'editor è selezionata la **radio**.

## Dati obbligatori

Il salvataggio è possibile solo se tutti i campi obbligatori sono compilati:

- mittente (o chiamante) e destinatario
- contenuti
- per telefono ed e-mail, il numero di telefono o l'indirizzo e-mail di entrambe le parti

I soli spazi non contano come inserimento.

## Altri campi

| Campo | Contenuto |
|---|---|
| volta | Momento in cui è arrivato il messaggio. Vuoto significa: ora del salvataggio. |
| contenuti | Testo del messaggio, formattabile con Markdown. L'**anteprima** mostra il risultato. |
| Allegati | File. Vedi [Aggiungere un allegato]({{< relref "/docs/user/how-to/einsatzjournal/anhang-hinzufuegen" >}}). |

## Regole per l'ora

- L'ora può essere al massimo cinque minuti nel futuro. Altrimenti sitrep segnala: «L'orario del messaggio non può essere più di cinque minuti nel futuro.»
- Dopo il triage l'ora non può più essere modificata: «L'orario non può più essere modificato perché il messaggio è già stato smistato.»

## Dati di un messaggio registrato

| Dato | Significato |
|---|---|
| numero del messaggio | Numero progressivo nell'evento, assegnato al salvataggio |
| Registrato il | Momento del salvataggio. Può differire dall'**ora** (campo **volta**). |
| priorità | normale o importante. Importanti sono le notizie chiave. |
| stato di triage | in attesa di, più informazioni necessarie, triageto o ripristina |
| Settori | Settori che ricevono il messaggio, dal triage in poi |

## Allegati

| | |
|---|---|
| Consentiti | Immagini (JPEG, PNG, GIF, WebP, TIFF), PDF, testo e CSV, Word, Excel, PowerPoint, ZIP |
| Dimensione | al massimo 25 MB per file, l'amministrazione può impostare un limite più basso |
| Nome del file | al massimo 255 caratteri |
| Non consentiti | tra l'altro SVG e HTML |
| Attivazione e disattivazione | L'amministrazione attiva gli allegati. Vedi [Configurazione]({{< relref "/docs/admin/reference/konfiguration" >}}). |

## Il modulo di notifica

Il modulo di notifica stampa un messaggio con questi dati: messaggio, mittente, destinatario, ora, Registrato il, numero del messaggio, comunicazione (per la radio con canale), stato di triage, priorità, contenuti, allegati e flusso dei messaggi. Vedi [Stampare un modulo di notifica]({{< relref "/docs/user/how-to/einsatzjournal/meldezettel-drucken" >}}).
