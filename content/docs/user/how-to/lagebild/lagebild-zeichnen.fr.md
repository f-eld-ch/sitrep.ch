---
title: "Dessiner votre propre calque dans le tableau de la situation"
description: "Créer un calque, dessiner librement et fixer le moment."
weight: 30
---
Dans le tableau de la situation (menu **Suivi dessiné**), vous dessinez librement, sans message, par exemple une carte de conduite. [Tableau de la situation et carte de renseignements]({{< relref "/docs/user/explanation/lagebild/lagebild-und-nachrichtenkarte" >}}) explique quand le tableau de la situation et quand la carte de renseignements est le bon endroit.

## Créer un calque

1. Ouvrez **Suivi dessiné**.
2. Ouvrez le menu des calques au bord droit de la carte.
3. Cliquez sur **Ajouter un calque** et saisissez un **Nom du calque**, par exemple `Führung`.

Le calque apparaît sous **Calques de dessin**. Choisissez-le pour y dessiner.

![Le menu des calques dans le tableau de la situation : calques de dessin avec Nachrichtenkarte et Lage, en dessous le champ pour le nom d'un nouveau calque](/images/docs/fr/lagebild/lagebild-layer-menue.webp)

Le calque **Carte de renseignements** est ici en lecture seule et porte l'indication «&nbsp;Dessiné via les messages&nbsp;». Vous ne dessinez sur ce calque que dans la [carte de renseignements]({{< relref "/docs/user/how-to/lagebild/nachrichtenkarte-zeichnen" >}}).

## Dessiner librement

1. Choisissez votre calque.
2. Avec les outils de dessin au bord droit de la carte, dessinez des objets sur la carte.
3. Pour un nouvel objet, fixez le **Moment** (**Valable dès**) à partir duquel il doit valoir. Par défaut, c'est maintenant.
4. Enregistrez l'objet. Les nouveaux objets ne sont créés qu'avec **Enregistrer**. Les objets non enregistrés sont perdus si vous quittez la page. sitrep demande confirmation avant.

Lors d'une modification ultérieure d'un objet, **Valable dès** apparaît également : cette modification vaut dès ce moment sur la frise chronologique.

## Consulter le déroulement

Avec la frise chronologique en bas de la carte, vous parcourez l'intervention. Sur **En direct**, vous voyez l'état actuel. À tous les autres moments, la carte est en lecture seule.

## Afficher un calque WMS

1. Dans le menu des calques, cliquez sur **Ajouter un calques WMS**.
2. Choisissez un **serveur WMS** ou saisissez l'URL d'un **serveur personnalisé**.
3. Cliquez sur **Récupérer les calques** et choisissez le **calque**.

Le serveur doit prendre en charge la projection EPSG:3857. Sinon, sitrep indique «&nbsp;Aucune calque compatible trouvée&nbsp;».

## Voir aussi

- [Carte de renseignements]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}}), avec la frise chronologique et les données des objets
