---
title: "Statut et droits d'un événement"
description: "Les statuts ouvert, fermé et supprimé, et qui a le droit de faire quelle action."
weight: 30
---
Un événement a un **statut**, et chaque action demande un **rôle**. Les rôles eux-mêmes sont décrits dans la référence [Contrôle d'accès]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).

## Statut

| Statut | Signification | Dans la liste des événements |
|---|---|---|
| **ouvert** | L'événement est en cours. Tout peut être saisi et modifié. | carte normale |
| **fermé** | L'événement est terminé. Il peut être consulté, mais plus modifié. | carte jaune, uniquement avec **Afficher fermé** |
| **supprimé** | L'événement est retiré de sitrep. Ses données sont archivées dans la base de données. | plus visible |

Transitions:

- ouvert → fermé: **Fermer**
- fermé → ouvert: **Ouvert**
- fermé → supprimé: **Supprimer**

Un événement ouvert ne peut pas être supprimé. Un événement supprimé ne peut pas être restauré dans sitrep.

## Qui a le droit de faire quoi

| Action | Rôle minimal | Statut de l'événement |
|---|---|---|
| Créer un événement | tout utilisateur connecté (devient propriétaire) | – |
| Consulter l'événement, **Entrer** | Lecteur | ouvert ou fermé |
| Saisir des messages, trier, tenir les personnes et les moyens, dessiner la carte | Éditeur | ouvert |
| Modifier le nom, l'emplacement et les domaines (**Éditer**) | Éditeur | ouvert |
| Lier ou délier un événement parent | Éditeur | ouvert |
| **Fermer** | Gestionnaire | ouvert |
| **Ouvert** | Gestionnaire | fermé |
| Gérer l'accès | Gestionnaire | – |
| **Supprimer** | Propriétaire | fermé |
| Restaurer un événement supprimé | impossible dans sitrep, uniquement avec un accès à la base de données | supprimé |

Pour un événement en **Accès ouvert**, tout utilisateur connecté a le droit de tout faire sauf **supprimer**. Cette action reste là aussi réservée au propriétaire.

## Ce qui est verrouillé dans un événement fermé

- saisir et corriger des messages
- trier des messages
- tenir les personnes et les moyens
- dessiner sur la carte de renseignements et clôturer des messages
- modifier l'événement

La consultation reste possible. Si vous essayez de modifier, sitrep indique: « L'incident n'est pas ouvert. »

## Messages d'erreur

| Message | Cause |
|---|---|
| « L'incident n'est pas ouvert. » | Vous modifiez quelque chose dans un événement fermé. |
| « L'incident doit être fermé avant d'effectuer cette action. » | Vous supprimez un événement encore ouvert. |
| « L'incident a déjà été supprimé. » | L'événement est déjà supprimé. |
| « L'événement parent sélectionné ne peut pas être utilisé. » | L'événement principal choisi ne remplit pas les conditions, voir [Lier un événement parent]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}). |
| « Vous n'avez pas la permission d'effectuer cette action. » | Votre rôle ne suffit pas. |

Pourquoi un événement évolue ainsi, c'est expliqué dans [Le cycle de vie d'un événement]({{< relref "/docs/user/explanation/ereignis/lebenszyklus-eines-ereignisses" >}}).
