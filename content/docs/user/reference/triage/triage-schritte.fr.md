---
title: "Vue du triage et étapes"
description: "Structure de la vue du triage, étapes avec leurs champs, statuts et raccourcis clavier."
weight: 30
---
Cette page décrit la vue du triage. Vous l'ouvrez par **Triage** dans la section du journal d'intervention. La marche à suivre figure dans le guide [Trier un message]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}).

![La vue du triage : liste des messages à gauche, message sélectionné et barre des étapes à droite, en bas Besoin de plus d'informations, Feuille de message et Suivant](/images/docs/fr/triage/triage-1-meldung.webp)

## Structure

- **Liste des messages** avec les filtres « Non trié », « Renseignements-clés » et « Les miens ».
- **Zone de triage** avec le message sélectionné en haut, la barre des étapes et le contenu de l'étape.
- **Pied de page** avec **Retour**, **Suivant**, l'impression de la feuille de message et, à la dernière étape, **Terminer le triage**.

La barre des étapes est cliquable. Vous pouvez sauter à n'importe quelle étape.

## Étapes

| Étape | Quand visible | Contenu |
|---|---|---|
| Message | uniquement pour les messages pas encore triés | Contrôler le message : expéditeur, destinataire, heure et contenu. Le bouton **Besoin de plus d'informations** se trouve aussi ici. |
| Flux du message | toujours | Activer ou désactiver **Renseignements-clés** et définir les domaines qui reçoivent le message |
| Personnes | toujours | Saisir la variation pour chaque catégorie |
| Moyens | toujours | Alerter et sélectionner des moyens et modifier leur statut |

Pour un message déjà trié, un résumé avec le flux du message, les personnes et les moyens s'ouvre d'abord. **Ajuster le triage** permet de le modifier.

![Le résumé d'un message trié avec le flux du message et le bouton Ajuster le triage](/images/docs/fr/triage/triage-zusammenfassung.webp)

### Flux du message

- **Renseignements-clés :** l'interrupteur règle la priorité sur « important » et attribue le message à tous les domaines de l'événement. Si vous le désactivez, les attributions précédentes reviennent.
- **Domaines :** chaque domaine est une étiquette avec un bouton plus ou moins. Les domaines qui reçoivent le message portent un bouton moins, les autres un bouton plus.

Les messages attribués au domaine **Nachrichtenkarte** apparaissent ensuite sur la [carte de renseignements]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}}).

### Personnes

Un compteur par catégorie, à droite l'aperçu de la modification. Voir [Vue d'ensemble des personnes]({{< relref "/docs/user/reference/triage/personenkategorien" >}}). Les modifications sont enregistrées dès que vous quittez l'étape avec **Suivant**.

### Moyens

Liste des moyens liés à ce message (la carte du haut avec **éditer** et la croix), champ de recherche **Rechercher des moyens…**, bouton **Alerter un nouveau moyen** et une section **Relevé** avec les moyens qui peuvent être réactivés. Voir [Vue d'ensemble des moyens et tableau des moyens]({{< relref "/docs/user/reference/triage/mitteltabelle" >}}).

## Statut de triage d'un message

| Statut | Signification |
|---|---|
| en attente | Pas encore trié |
| besoin de plus d'informations | Une demande de précision est nécessaire, le triage n'est pas encore terminé |
| trié | Triage terminé |
| réinitialiser | Le triage a été annulé, le message est de nouveau ouvert |

Dès qu'un message est **trié**, son heure ne peut plus être modifiée. La raison figure dans [Carte de renseignements et temps]({{< relref "/docs/user/explanation/lagebild/nachrichtenkarte-und-zeit" >}}).

## Après la fin du triage

sitrep affiche « Triage enregistré » avec le numéro du message. De là, vous passez au message suivant avec **Prochain message en attente (n° …)** ou revenez en arrière avec **Ajuster le triage**. Si tous les messages sont triés, « Tout est traité ! » apparaît.

## Restrictions

- Dans un événement clôturé, le triage n'est plus possible.
- L'heure du message ne peut pas être à plus de cinq minutes dans le futur.
- S'il n'y a pas encore de message, la vue affiche une indication et un bouton vers l'éditeur. Vous créez les messages dans l'éditeur.

## Raccourcis clavier

| Raccourci | Action |
|---|---|
| Ctrl + ↑ | Message précédent |
| Ctrl + ↓ | Message suivant |
| Ctrl + ↵ | Étape suivante, à la dernière étape terminer le triage |
| Esc | Désélectionner le message |

Vous pouvez ouvrir la liste dans la vue du triage avec le symbole de clavier en haut à droite.
