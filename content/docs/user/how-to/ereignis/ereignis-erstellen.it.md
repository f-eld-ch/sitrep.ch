---
title: "Creare un evento"
description: "Aprire un nuovo evento con nome, posizione e settori."
weight: 10
---
Ogni utente che ha effettuato l'accesso può aprire un evento. Chi lo crea ne diventa il **Proprietario**. Un'introduzione guidata è il tutorial [Il vostro primo evento]({{< relref "/docs/user/tutorials/ereignis/erstes-ereignis" >}}). Tutti i campi sono nel riferimento [Il modulo di un evento]({{< relref "/docs/user/reference/ereignis/ereignis-formular" >}}).

## Creare un evento

1. Aprite gli **Incidenti**.
2. Fate clic su **Creare**.
3. Inserite il **Nome Di Incidente**. È obbligatorio: finché manca, non è possibile salvare.
4. Se serve, inserite la **Posizione**.
5. Controllate i **Settori** e adattateli (vedi sotto).
6. Fate clic su **Salvare**.

![Il modulo Crea Nuovo Incidente con i valori predefiniti sotto Settori](/images/docs/it/ereignis/ereignis-formular-leer.webp)

sitrep apre il nuovo evento nell'**editore** del giornale d'intervento. Come passo successivo registrate i primi messaggi: [Registrare un messaggio]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

## Adattare i settori

I settori sono i servizi che ricevono i messaggi, per esempio «C Lage» o «Stabschef». I nuovi eventi iniziano con due valori predefiniti. Dipendono dalla lingua dell'interfaccia con cui create l'evento.

1. Sotto **Aggiungi Nuovo Settore** inserite il **nome** e l'**abbreviazione**. Entrambi i campi sono obbligatori.
2. Fate clic sul più. Il settore compare nell'elenco.
3. Con il pulsante rosso accanto a un settore lo rimuovete di nuovo. Questo è possibile solo finché l'evento non è salvato.

![Il modulo con quattro settori: i due valori predefiniti, Pompieri e Servizi sanitari](/images/docs/it/ereignis/ereignis-formular-ausgefuellt.webp)

Il settore **Carta informativa** c'è sempre. Lo crea il sistema e non compare nel modulo.

Dopo il salvataggio i settori si possono solo rinominare e se ne possono aggiungere di nuovi, vedi [Modificare un evento]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}).

## Creare un evento secondario

Se l'evento appartiene a un evento superiore (per esempio l'evento di una regione rispetto a quello del Cantone), sceglietelo nel campo **Evento Superiore**. Altro in [Collegare un evento superiore]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}).

## Chi può vedere l'evento

Se altri possono vedere e modificare l'evento lo stabilisce la **modalità di accesso**. Deriva dall'accesso predefinito dell'amministrazione. Finché questo non è impostato, i nuovi eventi sono **limitati**: solo voi li vedete. Controllate l'accesso dopo la creazione:

- [Gestire l'accesso a un evento]({{< relref "/docs/user/how-to/allgemein/ereigniszugriff-verwalten" >}})
- [Definire l'accesso predefinito]({{< relref "/docs/user/how-to/allgemein/standard-zugang" >}})
