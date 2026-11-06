---
title: "Champs de l'éditeur"
description: "Champs, indications obligatoires et règles de l'éditeur et de la feuille de message."
weight: 10
---
Vous saisissez les messages dans l'**Éditeur**. Instructions: [Saisir un message]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

![L'éditeur avec communication, destinataire, interlocuteur, date/heure, contenu, pièces jointes et aperçu](/images/docs/fr/einsatzjournal/editor-telefon.webp)

## Champs selon le type de communication

| Communication | Premier champ | Deuxième champ | Indication supplémentaire |
|---|---|---|---|
| Téléphone | Destinataire | Votre interlocuteur | un **numéro de téléphone** chacun, obligatoire |
| Radio | Destinataire | Expéditeur | un **canal** pour les deux |
| Email | Expéditeur du courriel | Destinataire du courriel | une **adresse courriel** chacun, obligatoire |
| Autre | Expéditeur | Destinataire | **Détails**, facultatif |

À l'ouverture de l'éditeur, **Radio** est sélectionné.

## Indications obligatoires

L'enregistrement n'est possible que si tous les champs obligatoires sont remplis:

- l'expéditeur (ou l'interlocuteur) et le destinataire
- le contenu
- pour le téléphone et le courriel, le numéro de téléphone ou l'adresse courriel des deux côtés

Des espaces seuls ne comptent pas comme une saisie.

## Autres champs

| Champ | Contenu |
|---|---|
| Date / Heure | Moment où le message est arrivé. Vide signifie: heure de l'enregistrement. |
| Contenu | Texte du message, avec mise en forme Markdown. L'**Aperçu** montre le résultat. |
| Pièces jointes | Fichiers. Voir [Ajouter une pièce jointe]({{< relref "/docs/user/how-to/einsatzjournal/anhang-hinzufuegen" >}}). |

## Règles pour l'heure

- L'heure ne doit pas dépasser de plus de cinq minutes l'heure actuelle. Sinon, sitrep signale: «L'heure du message ne peut pas être à plus de cinq minutes dans le futur.»
- Après le triage, l'heure ne peut plus être modifiée: «L'heure ne peut plus être modifiée, car le message a déjà été trié.»

## Indications sur un message saisi

| Indication | Signification |
|---|---|
| Numéro de message | Numéro continu dans l'événement, attribué à l'enregistrement |
| Enregistré sur le | Moment de l'enregistrement. Il peut différer de la **Date / Heure**. |
| Priorité | ordinaire ou important. Les renseignements-clés sont importants. |
| Statut de triage | en attente, besoin de plus d'informations, trié ou réinitialiser |
| Domaines | Domaines qui reçoivent le message, depuis le triage |

## Pièces jointes

| | |
|---|---|
| Autorisé | Images (JPEG, PNG, GIF, WebP, TIFF), PDF, texte et CSV, Word, Excel, PowerPoint, ZIP |
| Taille | 25 Mo au maximum par fichier, l'administration peut fixer une limite plus basse |
| Nom du fichier | 255 caractères au maximum |
| Non autorisé | entre autres SVG et HTML |
| Activation et désactivation | L'administration active les pièces jointes. Voir [Configuration]({{< relref "/docs/admin/reference/konfiguration" >}}). |

## La feuille de message

La feuille de message imprime un message avec ces indications: message, expéditeur, destinataire, heure, enregistré sur le, numéro de message, communication (pour la radio avec le canal), statut de triage, priorité, contenu, pièces jointes et flux des messages. Voir [Imprimer une feuille de message]({{< relref "/docs/user/how-to/einsatzjournal/meldezettel-drucken" >}}).
