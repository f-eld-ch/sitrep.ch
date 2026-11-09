---
title: "Lier un événement parent"
description: "Rattacher un événement à un événement parent ou supprimer le rattachement."
weight: 30
---
Avec un événement parent, vous réunissez la situation de plusieurs événements, par exemple celle des régions d'un canton. À quoi cela sert est expliqué dans [Événements parents et événements enfants]({{< relref "/docs/user/explanation/ereignis/uebergeordnete-und-untergeordnete-ereignisse" >}}). Pour l'événement enfant, il vous faut au moins le rôle **Éditeur**.

## Lier lors de la création

1. Ouvrez les **Événements** et cliquez sur **Créer**.
2. Dans le champ **Événement parent**, choisissez l'événement principal.
3. Remplissez le formulaire et cliquez sur **Enregistrer**. Voir [Créer un événement]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}).

## Lier un événement existant

1. Pour l'événement qui doit devenir un événement enfant, ouvrez le formulaire **Modifier un événement** (bouton **Éditer** dans la liste des événements ou menu de l'événement, voir [Modifier un événement]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}})).
2. Dans le champ **Événement parent**, choisissez l'événement principal.
3. Cliquez sur **Enregistrer**.

![Le formulaire Modifier un événement avec l'événement parent choisi](/images/docs/fr/ereignis/ereignis-uebergeordnet-gewaehlt.webp)

Dans la liste des événements, l'événement figure maintenant en retrait sous l'événement principal.

![La liste des événements: sous le Kantonales Führungsorgan figurent trois événements enfants](/images/docs/fr/ereignis/ereignisliste-hierarchie.webp)

## Supprimer le rattachement

1. Pour l'événement enfant, ouvrez le formulaire **Modifier un événement**.
2. Choisissez « aucun événement parent ».
3. Cliquez sur **Enregistrer**.

L'événement se retrouve au niveau supérieur.

## Ce qui est proposé au choix

Le champ **Événement parent** ne propose que des événements qui

- sont **ouverts**,
- ne sont pas supprimés,
- n'ont pas eux-mêmes d'événement parent,
- et ne sont pas l'événement lui-même.

Il y a **deux niveaux**: un événement est soit un événement principal, soit un événement enfant, jamais les deux. Si un événement a ses propres événements enfants, son formulaire n'affiche pas du tout le champ **Événement parent**. Supprimez d'abord leur rattachement si vous voulez le subordonner lui-même.

## Bon à savoir

- Si vous fermez un événement principal, les événements enfants restent ouverts et liés à lui.
- Si vous supprimez un événement principal, la liste des événements affiche de nouveau ses événements enfants au niveau supérieur.
