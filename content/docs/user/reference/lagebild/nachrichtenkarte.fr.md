---
title: "Carte de renseignements"
description: "Structure de la carte de renseignements, statut des messages, frise chronologique et données des objets."
weight: 10
---
La carte de renseignements est le poste de travail pour la carte. Vous l'ouvrez dans le menu **Suivi dessiné**, par l'entrée **Carte de renseignements**.

Le **tableau de la situation** (menu **Suivi dessiné**) est un autre endroit : vous y dessinez librement sur vos propres calques. Le calque Carte de renseignements y est en lecture seule. La différence est expliquée dans [Tableau de la situation et carte de renseignements]({{< relref "/docs/user/explanation/lagebild/lagebild-und-nachrichtenkarte" >}}).

## Structure du poste de travail

- **À gauche :** les messages qui ont été attribués au domaine Carte de renseignements lors du triage et qui ont été triés. Sur les petits écrans, la liste remplit la page jusqu'à ce que vous choisissiez un message.
- **À droite en haut :** le message choisi et l'action **Terminer** ou **Modifier**.
- **À droite en bas :** la carte.

![Le poste de travail de la carte de renseignements avec la liste des messages, le message et la carte](/images/docs/fr/lagebild/nachrichtenkarte-arbeitsplatz.webp)

## Boutons et marques

| Élément | Signification |
|---|---|
| Afficher les non dessinés (n) / Tout afficher | Filtre de la liste. Par défaut : seulement les messages qui restent à dessiner. |
| Terminer | Marque le message comme dessiné |
| Dessiné | Le message est dessiné et verrouillé |
| Modifier / Terminé | Déverrouille le dessin d'un message dessiné, respectivement le verrouille de nouveau |
| Ouvrir le message | Ouvre le message |
| Ce message | Met en évidence sur la carte les modifications du message choisi |
| Rétablir | Ramène un objet qui a été supprimé avec ce message |

Mise en évidence : vert ajouté, bleu clair modifié, rouge clair supprimé.

## Statut d'un message

| Statut | Signification |
|---|---|
| encore à dessiner | Trié, attribué au domaine Carte de renseignements, pas encore terminé |
| Dessiné | Terminé, dessin verrouillé |

## Frise chronologique dans le tableau de la situation

Dans le tableau de la situation, la carte montre l'état à un moment donné.

| Élément | Signification |
|---|---|
| En direct | État actuel de la carte |
| État à HH:MM | État de la carte après le message choisi |
| Message précédent / Message suivant | Saute d'un message à l'autre |
| Moment dans le déroulement de l'engagement | Curseur sur toute la durée de l'intervention |

Sauf sur **En direct**, la carte est en lecture seule.

![Le tableau de la situation avec la frise chronologique au bas de la carte](/images/docs/fr/lagebild/lagebild-zeitstrahl.webp)

## Données des objets

Selon le signe conventionnel, ces champs sont disponibles :

| Champ | Contenu |
|---|---|
| Désignation | Désignation de l'objet |
| Lieu | Lieu |
| Informations complémentaires | Autres indications |
| Description / Détails | Texte libre |
| Nombre de personnes | Nombre de personnes |
| Numéro de danger | Numéro Kemler |
| Numéro de substance ONU | Numéro ONU à quatre chiffres |
| Nom de la substance | Nom de la substance |
| Valable dès | Moment à partir duquel la modification vaut. Dans le tableau de la situation, vous le fixez vous-même ; sur la carte de renseignements, c'est l'heure du message. |

Avec **Verrouiller le signe** et **Désamarrer le signe**, vous verrouillez et déverrouillez la position d'un signe conventionnel.

## Restrictions

- Les interventions sans carte de renseignements affichent «&nbsp;Cet engagement n'a pas de carte de situation&nbsp;».
- Dans les événements terminés, **Terminer** et **Modifier** ne sont pas possibles.
- Les objets non enregistrés sont perdus si vous quittez la page. sitrep demande confirmation avant.

## Voir aussi

- [Dessiner un message sur la carte de renseignements]({{< relref "/docs/user/how-to/lagebild/nachrichtenkarte-zeichnen" >}})
- [Dessiner votre propre calque dans le tableau de la situation]({{< relref "/docs/user/how-to/lagebild/lagebild-zeichnen" >}})
- [Carte de renseignements et temps]({{< relref "/docs/user/explanation/lagebild/nachrichtenkarte-und-zeit" >}})
