---
title: "Comptage des personnes et des moyens"
description: "Pourquoi on saisit des variations plutôt que des états et pourquoi seuls les moyens engagés comptent."
weight: 20
---
## Des variations plutôt que des états

Un message dit rarement « il y a maintenant 17 blessés ». Il dit « trois blessés légers de plus ». C'est pourquoi sitrep saisit pour chaque message la **variation** : `+3`, `−1`. L'état est la somme de toutes les variations.

Cela a trois conséquences :

- **Traçable.** Chaque chiffre peut être ramené aux messages qui l'ont modifié.
- **Corrigeable.** Si un message est ajusté après coup, seule sa contribution change. Le reste des chiffres reste cohérent.
- **Pas de réconciliation.** Deux personnes qui travaillent en même temps sur des messages différents ne s'écrasent pas mutuellement. Les deux variations comptent.

Une personne qui a été retrouvée et qui est blessée représente une double variation : un disparu de moins, un blessé de plus. Le fait que les compteurs ne tombent jamais sous 0 empêche qu'une annulation retire plus de personnes qu'il n'y en a.

## Seuls les moyens engagés comptent

Dans les chiffres du tableau des moyens, seuls les moyens qui sont engagés comptent. Les moyens alertés et prêts sont indiqués séparément sous forme de pastilles de statut.

La raison est la force d'intervention. Un moyen alerté n'est pas encore sur place, et un moyen prêt ne travaille pas encore. Si la somme les comptait, l'état-major surestimerait ce qui est réellement fourni sur place. Dans l'exemple : l'armée est alertée avec 40 personnes, mais pas encore engagée. Sa contribution à la somme est 0 jusqu'à ce qu'elle soit engagée.

## Chaque modification a l'heure du message

Chaque modification d'un moyen, de l'alerte à la relève, est enregistrée avec l'heure du message, et non avec le moment où quelqu'un l'a saisie. Ainsi, le tableau est correct même si un message n'est trié que plus tard.

## Indications obligatoires et identité

- Un moyen ne peut être engagé que si la tâche principale et le lieu d'engagement sont connus. Ainsi, le tableau n'affiche jamais un moyen engagé sans mission.
- La formation, la désignation du lieu et le nom forment ensemble l'identité. Un moyen actif ne peut pas être saisi deux fois. Si un moyen relevé revient, vous le réactivez au lieu de le saisir à nouveau. Ainsi, son historique d'engagement reste cohérent.

## Relève

Lorsqu'un moyen est relevé par un autre, le nouveau reprend la mission et le lieu d'engagement. Le moyen relevé reste dans le tableau avec son historique, afin que le déroulement reste visible.

## Voir aussi

- [Vue d'ensemble des personnes]({{< relref "/docs/user/reference/triage/personenkategorien" >}})
- [Vue d'ensemble des moyens et tableau des moyens]({{< relref "/docs/user/reference/triage/mitteltabelle" >}})
