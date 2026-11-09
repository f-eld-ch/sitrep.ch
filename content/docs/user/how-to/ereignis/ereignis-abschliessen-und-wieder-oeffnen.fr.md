---
title: "Clôturer et rouvrir un événement"
description: "Terminer un événement et le rouvrir si nécessaire."
weight: 40
---
Lorsqu'un événement est terminé, vous le fermez. Il vous faut pour cela le rôle **Gestionnaire** ou **Propriétaire**. Pour un événement en **Accès ouvert**, tout utilisateur connecté peut le fermer et l'ouvrir.

## Fermer un événement

1. Ouvrez les **Événements**.
2. Pour l'événement, cliquez sur **Fermer**.

sitrep ferme l'événement immédiatement, sans demander de confirmation. L'événement disparaît de la liste, car les événements fermés sont masqués par défaut.

## Afficher les événements fermés

Cliquez sur **Afficher fermé**. Avec **masquer fermé**, vous les masquez de nouveau. Un événement fermé a un fond jaune et affiche l'heure de fermeture sous **fermé**.

![La carte d'un événement fermé avec les boutons Entrer, Supprimer et Ouvert](/images/docs/fr/ereignis/ereignis-karte-geschlossen.webp)

## Ce qu'un événement fermé ne permet plus

Un événement fermé reste consultable: avec **Entrer**, vous l'ouvrez et vous lisez le journal, les personnes, les moyens et la carte. Plus rien ne peut être modifié:

- saisir et corriger des messages,
- trier des messages,
- tenir les personnes et les moyens,
- dessiner sur la carte de renseignements,
- modifier l'événement lui-même.

![L'éditeur d'un événement fermé avec l'avis que la modification est impossible](/images/docs/fr/ereignis/ereignis-geschlossen-hinweis.webp)

sitrep indique: « Cet événement est fermé. Les modifications ne sont actuellement pas possibles. » Dans le triage, on lit: « Cet incident est clôturé. Le triage n'est plus possible. »

## Rouvrir un événement

1. Cliquez sur **Afficher fermé**.
2. Pour l'événement, cliquez sur **Ouvert**.

L'événement est de nouveau ouvert, avec tous les messages, les personnes, les moyens et la carte tels qu'ils étaient à la fermeture. Vous pouvez fermer et ouvrir autant de fois que vous voulez.

## Fermeture automatique

L'exploitation peut régler la fermeture automatique des événements après un certain nombre de jours. Par défaut, cette option est désactivée. Le réglage figure dans la [configuration]({{< relref "/docs/admin/reference/konfiguration" >}}).

## Supprimer un événement fermé

Seul un événement fermé peut être supprimé: [Supprimer un événement]({{< relref "/docs/user/how-to/ereignis/ereignis-loeschen" >}}).
