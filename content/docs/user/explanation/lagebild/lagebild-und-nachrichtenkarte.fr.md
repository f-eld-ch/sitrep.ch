---
title: "Tableau de la situation et carte de renseignements"
description: "Deux façons de remplir la carte : par des messages ou par un dessin libre."
weight: 5
---
sitrep a une carte avec plusieurs **calques**. On peut la remplir de deux façons : à partir des messages du journal ou librement, à la main. Il y a pour cela deux endroits qui se complètent. Dans l'application, les deux se trouvent dans le menu **Suivi dessiné**.

## La différence

| | Carte de renseignements | Tableau de la situation |
|---|---|---|
| Menu | **Suivi dessiné → Carte de renseignements** | **Suivi dessiné** |
| But | Dessiner les messages du journal | Dessiner librement des cartes, garder la vue d'ensemble |
| Calques | le calque particulier **Carte de renseignements** | vos propres calques de dessin, des calques WMS, et le calque Carte de renseignements en consultation |
| Déclencheur | un message trié pour le domaine Carte de renseignements | votre propre décision, sans message |
| Moment | l'heure du message | l'indication **Valable dès**, que vous fixez vous-même |
| Calque Carte de renseignements | se dessine ici | en lecture seule, avec l'indication «&nbsp;Dessiné via les messages&nbsp;» |

## La carte de renseignements : la carte suit le journal

La carte de renseignements est un **calque particulier**. Il ne se dessine qu'à partir des messages : dans le poste de travail, vous choisissez un message et vous dessinez ce qu'il dit. Chaque objet appartient ainsi à un message et vaut dès l'heure de celui-ci.

Cela a un but : la carte de renseignements est toujours **traçable**. Pour chaque objet, il existe le message qui l'a déclenché. Le calque montre ce que dit le journal, et rien de plus. C'est pourquoi on ne peut pas le modifier à la main dans le tableau de la situation.

## Le tableau de la situation : la carte libre

Dans le tableau de la situation, vous créez des **calques propres** et vous dessinez librement. Vous déterminez vous-même à partir de quand un objet vaut (**Valable dès**). Le tableau de la situation convient à tout ce qui ne naît pas de messages du journal, par exemple :

- les **cartes de conduite** que l'état-major dessine à partir de sa planification,
- les tableaux de la situation fondés sur l'appréciation et l'intention, et non sur des messages individuels,
- les représentations auxiliaires comme les secteurs ou les zones d'attente.

Dans le tableau de la situation, vous pouvez aussi afficher des calques WMS provenant de serveurs cartographiques externes.

## Ensemble

Le tableau de la situation montre tous les calques les uns sur les autres : le calque Carte de renseignements et vos propres calques. Vous activez et désactivez les calques. La frise chronologique vaut aussi pour tous les calques, de sorte que vous pouvez rejouer le déroulement de l'intervention sur la carte.

## Quoi utiliser quand

- **Un message dit quelque chose qui a sa place sur la carte ?** Attribuez-le lors du triage au domaine Carte de renseignements et dessinez-le sur la carte de renseignements.
- **L'état-major veut une carte issue de sa propre planification ?** Créez un calque propre dans le tableau de la situation.
- **Les deux ?** Les deux sont possibles. Les deux voies ne se gênent pas, car elles sont sur des calques différents.

## Voir aussi

- [Dessiner un message sur la carte de renseignements]({{< relref "/docs/user/how-to/lagebild/nachrichtenkarte-zeichnen" >}})
- [Dessiner votre propre calque dans le tableau de la situation]({{< relref "/docs/user/how-to/lagebild/lagebild-zeichnen" >}})
- [Carte de renseignements et temps]({{< relref "/docs/user/explanation/lagebild/nachrichtenkarte-und-zeit" >}})
