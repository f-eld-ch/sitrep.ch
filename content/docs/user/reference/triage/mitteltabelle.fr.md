---
title: "Vue d'ensemble des moyens et tableau des moyens"
description: "Colonnes, statuts, indications obligatoires et règles de comptage de la vue d'ensemble des moyens."
weight: 20
---
La vue d'ensemble des moyens affiche tous les moyens engagés de l'événement. Les données proviennent du triage, à l'étape **Moyens**. Guide : [Alerter et engager des moyens]({{< relref "/docs/user/how-to/triage/mittel-aufbieten-und-einsetzen" >}}).

Ouvrez la vue d'ensemble par **Moyens** dans la navigation de l'événement.

![La vue d'ensemble des moyens : en haut une tuile par formation avec les personnes engagées et des pastilles de statut, dessous le tableau des moyens groupé par formation et par désignation du lieu](/images/docs/fr/triage/mitteltabelle.webp)

## Structure

Les moyens sont groupés par formation, puis par formation ou désignation du lieu (par exemple Sapeurs-pompiers, puis Altdorf). Les moyens des événements subordonnés apparaissent dans un groupe à part. Chaque groupe indique le nombre de personnes engagées.

## Colonnes du tableau

| Colonne | Contenu |
|---|---|
| Moyen | Formation, désignation du lieu et nom |
| Personnel | Nombre de personnes |
| Statut | Alerté, Prêt, Engagé ou Relevé |
| Coordonnées | Radio, téléphone, e-mail ou autre, avec indication (par exemple canal ou numéro) |
| Alerté | Heure du message par lequel le moyen a été alerté |
| Prêt | Heure du message par lequel il a été annoncé prêt |
| Engagé | Début de l'engagement |
| Terminé / Relevé | Fin de l'engagement |
| Tâche principale | Mission |
| Lieu d'engagement | Lieu de l'engagement |

Toutes les heures sont les **heures des messages**, et non le moment où quelqu'un a terminé le triage. Pour un moyen relevé, la ligne « Remplacé par » indique le moyen qui a pris le relais.

## Statuts

| Statut | Signification | Actions possibles |
|---|---|---|
| Alerté | Le moyen est alarmé, mais pas encore sur place | Marquer prêt |
| Prêt | Le moyen est arrivé ou prêt | Engager, Libérer |
| Engagé | Le moyen travaille sur une mission | Intervention terminée, Relever, Libérer |
| Relevé | L'engagement du moyen est terminé | Réactiver |

Transitions :

- Alerté → Prêt → Engagé
- Engagé → Prêt (**Intervention terminée**)
- Prêt ou Engagé → Relevé (**Relever** ou **Libérer**)
- Relevé → Alerté (**Réactiver**). L'historique d'engagement est conservé, la mission, le lieu d'engagement et la relève de l'engagement précédent sont réinitialisés.

Les engagements précédents d'un moyen restent visibles sous forme de lignes supplémentaires.

## Indications lors de l'alerte

| Champ | Obligatoire | Remarque |
|---|---|---|
| Formation | oui | Sapeurs-pompiers, Police, Armée, Protection civile, Services techniques, Services sanitaires, Autre |
| Formation / lieu | oui | par exemple « Altdorf » |
| Désignation | oui | par exemple « Zug 1 » |
| Personnel | oui, au moins 1 | |

La formation, la désignation du lieu et le nom forment ensemble l'identité du moyen. Un moyen actif ayant la même identité ne peut pas être alerté une seconde fois. S'il existe un moyen relevé avec la même identité, sitrep propose de le réactiver.

### Taille

sitrep propose la taille en fonction du nombre de personnes :

| Taille | Personnes |
|---|---|
| Section | 1–5 |
| Groupe | 6–19 |
| Peloton | 20–60 |
| Compagnie | 61–300 |
| Bataillon | dès 301 |

## Indications obligatoires pour l'engagement

Un moyen ne peut être engagé que si la **Tâche principale** et le **Lieu d'engagement** sont remplis. Ainsi, le tableau n'affiche jamais un moyen engagé sans mission.

## Règles de comptage

Dans les chiffres des groupes, **seuls les moyens au statut Engagé** sont comptés. Les moyens alertés et prêts sont indiqués séparément sous forme de pastilles de statut. Justification : [Comptage des personnes et des moyens]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}}).

## Imprimer

Le bouton **Pour appuyer** génère le tableau pour le rapport ou la paroi d'affichage. Voir [Imprimer le tableau des moyens]({{< relref "/docs/user/how-to/triage/mitteltabelle-drucken" >}}).
