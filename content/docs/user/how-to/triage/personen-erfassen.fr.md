---
title: "Saisir des personnes lors du triage"
description: "Saisir la variation du nombre de personnes et corriger une saisie."
weight: 20
---
À l'étape **Personnes**, vous ne saisissez que ce que le message dit de **nouveau**. La vue d'ensemble des personnes en calcule les états. La raison est expliquée dans [Comptage des personnes et des moyens]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}}).

## Saisir des personnes

1. Ouvrez le message dans le **Triage** et allez à l'étape **Personnes**.
2. Réglez la variation pour chaque catégorie avec les boutons **+** et **−** ou en la tapant.
3. Vérifiez à droite l'aperçu de la modification.
4. Cliquez sur **Suivant**. L'enregistrement n'a lieu qu'à ce moment.

![L'étape Personnes : trois blessés saisis, à droite l'aperçu de la modification](/images/docs/fr/triage/triage-3-personen.webp)

## Exemples

| Le message dit | Vous saisissez |
|---|---|
| Le service sanitaire annonce trois blessés légers de plus. | Blessés `+3` |
| Une personne disparue a été retrouvée, elle est blessée. | Disparus `−1`, Blessés `+1` |
| Deux personnes ont été dégagées décédées. | Décédés `+2` |

Ne saisissez pas l'état total. L'état total est affiché dans la [vue d'ensemble des personnes]({{< relref "/docs/user/reference/triage/personenkategorien" >}}).

## Corriger une saisie

1. Sélectionnez le message déjà trié et cliquez sur **Ajuster le triage**.
2. Ouvrez l'étape **Personnes**. Les valeurs de la saisie précédente figurent déjà dans le compteur.
3. Modifiez la valeur, en la remettant à 0 pour annuler une saisie, et cliquez sur **Suivant**.
4. Terminez le triage.

## Remarques

- Le compteur ne peut pas être réglé plus bas que l'état actuel ne le permet. Un état inférieur à 0 est impossible.
- Si le message ne concerne aucune personne, laissez tous les compteurs à 0 et cliquez sur **Suivant**.
- Les messages d'erreur apparaissent dans l'étape elle-même, sans que vos saisies soient perdues.
