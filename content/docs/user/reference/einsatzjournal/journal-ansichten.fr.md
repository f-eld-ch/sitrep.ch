---
title: "Vues du journal d'intervention"
description: "Comparaison de l'éditeur, du journal d'intervention, du triage et de la carte de renseignements."
weight: 20
---
sitrep affiche les messages de l'événement dans plusieurs vues. Chacune a son usage.

| Vue | Usage | Modifier les messages | Imprimer |
|---|---|---|---|
| **Éditeur** | Saisir et corriger les messages, avec la liste en dessous | oui, tant qu'ils ne sont pas triés | imprimer le journal, feuille de message |
| **Journal d'intervention** | Lire et filtrer tous les messages | non | non |
| **Triage** | Évaluer les messages: flux du message, personnes, moyens | corriger le message à la première étape | feuille de message |
| **Carte de renseignements** (menu Suivi Dessiné) | Dessiner les messages | non | non |
| **Suivi Dessiné** (le tableau de la situation) | Consulter la carte, dessiner librement ses propres couches | non | export de la carte |

## Journal d'intervention

La liste affiche les messages les plus récents en haut. Pour chaque message figurent l'expéditeur, le destinataire, l'heure, le numéro de message, la priorité et le statut de triage, puis le contenu et les domaines sous forme d'étiquettes.

Les couleurs aident à avoir une vue d'ensemble: les messages pas encore triés ont un fond jaune, les messages importants un fond rouge. Le statut figure toujours aussi sous forme de texte dans le message.

### Filtres

| Filtre | Valeurs |
|---|---|
| Statut de triage | tout, en attente, besoin de plus d'informations, trié, réinitialiser |
| Priorité | tout, ordinaire, important |
| Domaine | tout, ou un domaine de l'événement |

Les mêmes filtres se trouvent dans la liste sous l'éditeur.

![Le journal d'intervention avec les filtres en haut et les messages en dessous](/images/docs/fr/einsatzjournal/journal-uebersicht.webp)

## Imprimer le journal

Le tableau imprimé a les colonnes heure, expéditeur, destinataire et contenu. L'en-tête montre le titre, l'état et les filtres réglés.

## Liste des messages dans le triage et la carte de renseignements

Le triage et la carte de renseignements affichent à gauche une liste des messages avec des filtres. Le triage a **Non trié**, **Renseignements-clés** et **Les miens**. La carte de renseignements n'affiche que les messages destinés au domaine carte de renseignements et a le filtre **Afficher les non dessinés** ou **Tout afficher**.

## Voir aussi

- [Champs de l'éditeur]({{< relref "/docs/user/reference/einsatzjournal/editor-felder" >}})
- [Vue du triage et étapes]({{< relref "/docs/user/reference/triage/triage-schritte" >}})
- [Carte de renseignements]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}})
