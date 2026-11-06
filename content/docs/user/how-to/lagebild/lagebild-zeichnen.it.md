---
title: "Disegnare un livello proprio nel quadro della situazione"
description: "Creare un livello proprio, disegnare liberamente e impostare il momento."
weight: 30
---
Nel quadro della situazione (menu **Aggiornamento Grafico**) disegnate liberamente, senza messaggio, per esempio una carta di condotta. Quando il quadro della situazione e quando la carta informativa è il posto giusto lo spiega [Quadro della situazione e carta informativa]({{< relref "/docs/user/explanation/lagebild/lagebild-und-nachrichtenkarte" >}}).

## Creare un livello

1. Aprite **Aggiornamento Grafico**.
2. Aprite il menu dei livelli sul bordo destro della carta.
3. Fate clic su **Aggiungi livello** e inserite un **Nome del livello**, per esempio `Führung`.

Il livello compare sotto **Livello di disegno**. Sceglietelo per disegnarvi sopra.

![Il menu dei livelli nel quadro della situazione: livelli di disegno con Nachrichtenkarte e Lage, sotto il campo per il nome di un nuovo livello](/images/docs/it/lagebild/lagebild-layer-menue.webp)

Il livello **Carta informativa** qui è di sola lettura e porta l'indicazione «Disegnato tramite i messaggi». Vi si disegna solo nella [carta informativa]({{< relref "/docs/user/how-to/lagebild/nachrichtenkarte-zeichnen" >}}).

## Disegnare liberamente

1. Scegliete il vostro livello.
2. Con gli strumenti di disegno sul bordo destro della carta disegnate oggetti sulla carta.
3. Per un nuovo oggetto impostate il **Momento** (**Valido dal**) da cui deve valere. Per impostazione predefinita è adesso.
4. Salvate l'oggetto. I nuovi oggetti vengono creati solo con **Salva**. Gli oggetti non salvati vanno persi se lasciate la pagina. sitrep chiede conferma prima.

Anche in una modifica successiva a un oggetto compare **Valido dal**: «La modifica vale da questo momento sulla linea temporale.»

## Vedere l'evoluzione

Con la linea temporale in basso sulla carta percorrete l'intervento. Su **In diretta** vedete lo stato attuale. In tutti gli altri momenti la carta è di sola lettura.

## Visualizzare un livello WMS

1. Nel menu dei livelli fate clic su **Aggiungere il livello WMS**.
2. Scegliete un **server WMS** oppure inserite l'URL di un **server personalizzato**.
3. Fate clic su **Recuperare il livello** e scegliete il **livello**.

Il server deve supportare la proiezione EPSG:3857. Altrimenti sitrep segnala «Nessun livello compatibile trovato».

## Vedi anche

- [Carta informativa]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}}), con linea temporale e dati degli oggetti
