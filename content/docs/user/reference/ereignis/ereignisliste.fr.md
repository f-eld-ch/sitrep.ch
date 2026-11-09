---
title: "La liste des événements"
description: "Structure de la liste des événements: cartes, boutons selon le statut et filtre."
weight: 10
---
La liste des événements s'ouvre après la connexion et avec le logo en haut à gauche. Elle affiche tous les événements que vous avez le droit de voir. Dans l'application, elle s'intitule « Événements ». Les instructions pour les actions figurent dans la section [Événements]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}).

![La liste des événements avec les boutons Créer et Afficher fermé et les événements ouverts sous forme de cartes](/images/docs/fr/ereignis/ereignisliste.webp)

## Boutons au-dessus de la liste

| Bouton | Effet |
|---|---|
| **Créer** | Ouvre le formulaire d'un nouvel événement |
| **Afficher fermé** | Affiche aussi les événements fermés. Ensuite, il s'appelle **masquer fermé**. |

Par défaut, les événements fermés sont masqués.

## La carte d'un événement

| Indication | Contenu |
|---|---|
| Titre | Nom de l'événement, à côté une marque pour l'accès |
| **emplacement** | Lieu de l'événement, s'il est indiqué |
| **ouvert** | Moment où l'événement a été créé |
| **fermé** | Moment de la fermeture, uniquement pour les événements fermés |

**Marque pour l'accès:** un cadenas fermé signifie **Restreint**, un cadenas ouvert **Accès ouvert**. Lorsque vous passez la souris dessus, le nom s'affiche en info-bulle. Voir [Contrôle d'accès]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).

Les événements fermés ont un fond jaune.

![La liste avec les événements fermés sur fond jaune](/images/docs/fr/ereignis/ereignisliste-geschlossene.webp)

## Boutons sur la carte

Les boutons qu'affiche une carte dépendent du statut de l'événement et de votre rôle.

| Bouton | Effet | Ouvert | Fermé | Rôle |
|---|---|---|---|---|
| **Entrer** | Ouvre l'événement (la vue d'ensemble) | oui | oui | Lecteur |
| **Éditer** | Ouvre le formulaire de modification | oui | non | Éditeur |
| **Fermer** | Ferme l'événement | oui | non | Gestionnaire |
| **Ouvert** | Rouvre l'événement | non | oui | Gestionnaire |
| **Supprimer** | Supprime l'événement | non | oui | Propriétaire |

Vous accédez aussi au formulaire de modification par le menu de l'événement, voir [Modifier un événement]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}). Si le rôle vous manque, le bouton manque aussi. Tous les droits figurent dans [Statut et droits d'un événement]({{< relref "/docs/user/reference/ereignis/status-und-rechte" >}}).

## Événements enfants

Un événement enfant figure en retrait sous son événement principal, avec un trait bleu sur le bord gauche. La liste affiche deux niveaux. Un événement enfant dont l'événement principal a été supprimé figure de nouveau au niveau supérieur.

![La liste des événements: sous le Kantonales Führungsorgan figurent trois événements enfants](/images/docs/fr/ereignis/ereignisliste-hierarchie.webp)
