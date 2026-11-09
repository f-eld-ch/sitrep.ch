---
title: "Supprimer un événement"
description: "Retirer un événement fermé de la liste des événements."
weight: 50
---
{{< note type="warning" >}}
sitrep **ne demande pas** de confirmation avant de supprimer. Un événement supprimé disparaît de la liste des événements et **ne peut pas être restauré dans sitrep**. Les données de l'événement restent archivées dans la base de données. Seule l'exploitation, avec un accès à la base de données, peut les récupérer.
{{< /note >}}

Il est rarement nécessaire de supprimer. Si vous voulez simplement ranger un événement terminé, laissez-le **fermé**: il est alors masqué par défaut et reste retrouvable à tout moment.

## Conditions

- L'événement est **fermé**. Vous devez d'abord fermer un événement ouvert: [Clôturer et rouvrir un événement]({{< relref "/docs/user/how-to/ereignis/ereignis-abschliessen-und-wieder-oeffnen" >}}).
- Vous êtes **Propriétaire** de l'événement. Cela vaut aussi en Accès ouvert: seul le propriétaire voit le bouton **Supprimer**.

## Supprimer un événement

1. Ouvrez les **Événements** et cliquez sur **Afficher fermé**.
2. Pour l'événement fermé, cliquez sur **Supprimer**.

L'événement disparaît aussitôt de la liste.

![La liste des événements après la suppression: l'événement n'y figure plus](/images/docs/fr/ereignis/ereignisliste-nach-loeschen.webp)

## Ce qu'il advient de l'événement

- Il ne figure plus dans la liste des événements, pas même sous **Afficher fermé**.
- Les données (messages, personnes, moyens, carte) restent archivées dans la base de données. Dans sitrep même, il n'existe aucun moyen de récupérer l'événement.
- S'il s'agissait d'un événement principal, ses événements enfants se retrouvent de nouveau au niveau supérieur de la liste.

## Un événement supprimé par erreur

Adressez-vous à l'administration de votre installation sitrep. Seul un accès à la base de données permet de restaurer un événement supprimé.

Pour le contexte: [Le cycle de vie d'un événement]({{< relref "/docs/user/explanation/ereignis/lebenszyklus-eines-ereignisses" >}}).
