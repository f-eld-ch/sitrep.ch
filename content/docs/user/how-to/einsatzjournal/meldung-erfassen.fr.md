---
title: "Saisir un message"
description: "Saisir un message dans l'éditeur selon le type de communication."
weight: 10
---
Saisissez chaque message dans l'**Éditeur** dès qu'il arrive. Le tutoriel [Saisir votre premier message]({{< relref "/docs/user/tutorials/einsatzjournal/erste-meldung" >}}) en propose une introduction guidée. Les champs sont décrits dans la référence [Champs de l'éditeur]({{< relref "/docs/user/reference/einsatzjournal/editor-felder" >}}).

## Marche à suivre générale

1. Ouvrez **Éditeur** dans le journal d'intervention.
2. Choisissez la **Communication**: Téléphone, Radio, Email ou Autre.
3. Remplissez le destinataire, l'expéditeur, l'heure et le contenu (voir ci-dessous, selon le type).
4. Contrôlez l'**Aperçu**.
5. Cliquez sur **Enregistrer**.

Le bouton **Enregistrer** n'agit que lorsque tous les champs obligatoires sont remplis. sitrep numérote le message automatiquement. Le message reçoit le statut de triage **En attente**.

## Téléphone

1. Saisissez le **Destinataire** et son numéro de téléphone.
2. Saisissez **Votre interlocuteur** et son numéro de téléphone.

Les deux numéros sont obligatoires.

![L'éditeur avec un message téléphonique: destinataire et interlocuteur avec numéros de téléphone](/images/docs/fr/einsatzjournal/editor-telefon.webp)

## Radio

1. Choisissez le **Canal**. Il vaut pour le destinataire et l'expéditeur.
2. Saisissez le **Destinataire** et l'**Expéditeur**.

Radio est le réglage par défaut à l'ouverture de l'éditeur.

![L'éditeur avec un message radio: canal, destinataire et expéditeur](/images/docs/fr/einsatzjournal/editor-funk.webp)

## Email

1. Saisissez l'**Expéditeur du courriel** et son adresse électronique.
2. Saisissez le **Destinataire du courriel** et son adresse électronique.

Les deux adresses sont obligatoires.

![L'éditeur avec un courriel: expéditeur et destinataire du courriel avec adresses](/images/docs/fr/einsatzjournal/editor-email.webp)

## Autre

Pour les messages qui arrivent en personne ou par une autre voie, saisissez l'**Expéditeur** et le **Destinataire**. Sous **Détails**, vous pouvez préciser comment le message est arrivé. Les détails sont facultatifs.

![L'éditeur avec la communication Autre: expéditeur avec détails, destinataire](/images/docs/fr/einsatzjournal/editor-andere.webp)

## Fixer l'heure

- Si vous laissez le champ **Date / Heure** vide, c'est l'heure de l'enregistrement qui compte.
- Si le message est arrivé plus tôt que vous ne le saisissez, indiquez l'heure d'arrivée.
- L'heure ne doit pas dépasser de plus de cinq minutes l'heure actuelle.

L'heure est importante: plus tard, les personnes, les moyens et la carte de renseignements se rapportent à cette heure. Après le triage, elle ne peut plus être modifiée. Pour en savoir plus: [Journal, triage et carte]({{< relref "/docs/user/explanation/einsatzjournal/journal-und-karte" >}}).

## Reprendre des noms et des numéros

En tapant, sitrep propose des noms, des numéros et des canaux radio issus de messages précédents. Si vous choisissez une proposition, vous gagnez du temps et évitez les fautes de frappe. Une orthographe identique pour un même expéditeur facilite le filtrage par la suite.

## Mettre le contenu en forme

Le champ **Contenu** est un éditeur Markdown avec barre d'outils, par exemple pour le gras, les listes ou les titres. L'**Aperçu** sous le formulaire montre le résultat. Sous la pression du temps, écrivez simplement du texte: la mise en forme est facultative.

## Ensuite

Le message figure dans le journal d'intervention et attend le triage: [Trier un message]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}). Vous ajoutez des fichiers avec [Ajouter une pièce jointe]({{< relref "/docs/user/how-to/einsatzjournal/anhang-hinzufuegen" >}}).
