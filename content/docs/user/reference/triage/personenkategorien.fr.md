---
title: "Vue d'ensemble des personnes"
description: "Les cinq catégories de personnes, comment les chiffres sont obtenus et où ils sont affichés."
weight: 10
---
La vue d'ensemble des personnes indique combien de personnes sont touchées dans l'événement. Les chiffres proviennent exclusivement du triage : à l'étape **Personnes**, vous saisissez la variation qu'apporte un message. Guide: [Saisir des personnes lors du triage]({{< relref "/docs/user/how-to/triage/personen-erfassen" >}}).

Vous ouvrez la vue d'ensemble par **Personnes** dans la navigation de l'événement.

![La vue d'ensemble des personnes avec les cinq catégories et la ventilation de l'événement, événement d'exemple « Unwetter Bergdorf – Murgang Dorfbach »](/images/docs/fr/triage/personenuebersicht.webp)

## Catégories

L'ordre est le même dans le triage et dans la vue d'ensemble.

| Catégorie | Signification |
|---|---|
| Blessés | Personnes blessées |
| Disparus | Personnes dont on ignore où elles se trouvent |
| Sans-abri | Personnes sans logement |
| Bloqués | Personnes qui ne peuvent pas se libérer seules |
| Décédés | Personnes décédées |

Chaque catégorie a un symbole du set de signes conventionnels de l'OFPP, qui apparaît à côté du chiffre dans le triage et dans la vue d'ensemble.

## Comment les chiffres sont calculés

- Pour chaque message, vous saisissez une **variation** (delta), pas un état. Exemple : `+3` pour Blessés, `−1` pour Disparus.
- L'état d'une catégorie est la somme de toutes les variations de tous les messages triés.
- L'état d'une catégorie ne peut jamais tomber sous 0. Dans le triage, la variation ne peut être réduite que jusqu'à ce que l'état reste à 0.
- Une variation de 0 n'est pas enregistrée, sauf si un triage précédent du même message avait déjà des valeurs. Dans ce cas, l'ancienne valeur est annulée.

## Structure de la page

| Zone | Contenu |
|---|---|
| Totaux | Somme pour l'événement et tous les événements subordonnés |
| Cet événement | Les chiffres de l'événement lui-même |
| Incidents enfants | Une carte par événement subordonné avec ses chiffres |

Tant qu'aucun message avec des personnes n'a été trié, la page affiche « Aucune victime enregistrée » et un bouton vers le triage.

## Voir aussi

- [Étapes du triage]({{< relref "/docs/user/reference/triage/triage-schritte" >}})
- [Pourquoi on saisit des variations plutôt que des états]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}})
