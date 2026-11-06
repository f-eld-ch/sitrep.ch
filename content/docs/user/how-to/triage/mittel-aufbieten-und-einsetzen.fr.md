---
title: "Alerter et engager des moyens"
description: "Alerter, engager, relever, libérer et réactiver un moyen."
weight: 30
---
Vous gérez les moyens à l'étape **Moyens** du triage. Chaque modification est enregistrée avec l'**heure du message** que vous êtes en train de trier. Les statuts et les transitions figurent dans la référence [Vue d'ensemble des moyens et tableau des moyens]({{< relref "/docs/user/reference/triage/mitteltabelle" >}}).

Toutes les actions commencent de la même façon : ouvrez le message dans le **Triage** et allez à l'étape **Moyens**.

## Sélectionner un moyen pour le message

Si le message concerne un moyen déjà saisi :

1. Cherchez-le dans le champ **Rechercher des moyens…**, ou cliquez sur **Afficher … de plus**.
2. Cliquez sur le moyen (info-bulle : « Ajouter au message »). Il est maintenant lié au message et figure en haut de la liste.
3. Cliquez sur **éditer** pour ouvrir sa fiche. La croix retire le moyen du message.

![La liste des moyens d'un message : le moyen nouvellement alerté figure en haut, suivi des autres moyens de l'événement](/images/docs/fr/triage/triage-4-mittel-liste.webp)

## Alerter un moyen

1. Cliquez sur **Alerter un nouveau moyen**.
2. Choisissez la **Formation**.
3. Saisissez la **Formation / lieu** (par exemple `Altdorf`) et la **Désignation** du moyen (par exemple `Zug 1`).
4. Indiquez le nombre de **Personnel**. sitrep propose la taille (section, groupe, peloton …).
5. Cliquez sur **Alerter un moyen**.

Le moyen reçoit le statut **Alerté** et est lié au message.

![Le formulaire pour alerter un moyen : formation, lieu, désignation, personnel et la taille Groupe proposée](/images/docs/fr/triage/triage-4-mittel-aufbieten.webp)

Si le moyen existe déjà, sitrep signale une erreur. S'il est relevé, sitrep propose de le [réactiver](#réactiver-un-moyen-relevé).

## Marquer un moyen prêt

1. [Sélectionnez le moyen alerté](#sélectionner-un-moyen-pour-le-message) et ouvrez-le avec **éditer**.
2. Si nécessaire, renseignez les [coordonnées](#renseigner-les-coordonnées).
3. Cliquez sur **Marquer prêt**. La fiche se referme.

![La fiche d'un moyen alerté avec le champ Contact, le bouton Marquer prêt et Corriger les données](/images/docs/fr/triage/triage-mittel-aufgeboten.webp)

## Engager un moyen

1. Ouvrez le moyen prêt avec **éditer**.
2. Saisissez la **Tâche principale** et le **Lieu d'engagement**. Les deux sont obligatoires.
3. Cliquez sur **Engager**.

Si une indication manque, le bouton reste sans effet et le champ est marqué comme obligatoire.

![La fiche d'un moyen prêt avec la tâche principale, le lieu d'engagement et les boutons Engager et Libérer](/images/docs/fr/triage/triage-mittel-einsetzen.webp)

## Terminer l'engagement ou réaffecter

- **Intervention terminée** remet le moyen à **Prêt**.
- Si le moyen doit recevoir une nouvelle mission, terminez l'engagement, saisissez la nouvelle tâche principale et le nouveau lieu d'engagement, puis cliquez sur **Engager**.

## Relever un moyen

1. Ouvrez le moyen engagé avec **éditer**.
2. Sous **Remplacé par**, choisissez le moyen qui prend le relais. Il doit déjà être saisi et ne pas être relevé.
3. Cliquez sur **Relever**.

![La fiche d'un moyen engagé avec la sélection Remplacé par et les boutons Intervention terminée, Relever et Libérer](/images/docs/fr/triage/triage-mittel-abloesen.webp)

Le moyen qui prend le relais reprend la mission et le lieu d'engagement et est engagé. Le moyen relevé reçoit le statut **Relevé** et reste dans le tableau des moyens avec son historique d'engagement.

## Libérer un moyen

Cliquez sur **Libérer** pour un moyen prêt ou engagé. Le moyen reçoit le statut **Relevé**, sans qu'un successeur soit défini.

## Réactiver un moyen relevé

Lors d'engagements de plusieurs jours, un moyen relevé peut revenir.

1. À l'étape **Moyens**, ouvrez sous la liste la section **Relevé**. Elle apparaît dès qu'il existe des moyens relevés qui ne sont pas liés à ce message.
2. Cliquez sur **Réactiver** pour le moyen concerné.

![La section Relevé sous la liste des moyens avec un moyen relevé et le bouton Réactiver](/images/docs/fr/triage/triage-mittel-abgeloest.webp)

Le moyen est de nouveau **Alerté**. La mission, le lieu d'engagement et la relève de l'engagement précédent sont réinitialisés, l'historique d'engagement est conservé.

## Renseigner les coordonnées

1. Ouvrez le moyen avec **éditer**.
2. Choisissez le type (téléphone, radio ou autre) et saisissez l'indication, par exemple le canal radio ou le numéro.
3. Confirmez l'indication là où sitrep le demande.

Pour un moyen alerté, le champ **Contact** figure directement dans le moyen. Pour les moyens prêts et engagés, vous le trouvez sous **Corriger les données**.

## Corriger le nom, le contact ou le nombre de personnes

1. Ouvrez le moyen avec **éditer** et cliquez sur **Corriger les données**.
2. Modifiez le nom, le contact ou le nombre de personnes et cliquez sur **enregistrer**.

![La fiche avec les données ouvertes : désignation du moyen, contact et personnel, avec enregistrer et Annuler](/images/docs/fr/triage/triage-mittel-angaben-korrigieren.webp)

Un moyen relevé ne peut plus être modifié. Le nombre de personnes doit être un nombre entier d'au moins 1.
