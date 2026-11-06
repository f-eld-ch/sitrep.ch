---
title: "Trier un message"
description: "Contrôler un message, l'attribuer au flux du message et terminer le triage."
weight: 10
---
Ce guide montre comment trier un message. Vous saisissez les personnes et les moyens dans les étapes intermédiaires, qui ont leurs propres guides. Le tutoriel [Votre premier triage]({{< relref "/docs/user/tutorials/triage/erste-triage" >}}) en propose une introduction guidée.

Condition : l'événement contient au moins un message. Vous créez les messages dans l'**éditeur**, voir [Saisir un message]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

## Sélectionner un message

1. Ouvrez **Triage** dans le journal d'intervention.
2. Sélectionnez un message dans la liste. Au départ, sitrep sélectionne le plus ancien message encore ouvert.
3. Avec le filtre **Non trié**, la liste n'affiche que les messages ouverts.

## Contrôler le message

Cette étape n'apparaît que pour les messages pas encore triés.

1. Contrôlez l'expéditeur, le destinataire, l'heure et le contenu, et corrigez ce qui ne va pas.
2. S'il manque une information, cliquez sur **Besoin de plus d'informations**. Le message reste ouvert et porte le statut « besoin de plus d'informations ».
3. Sinon, cliquez sur **Suivant**.

![L'étape de contrôle du message avec les données du message et les boutons Besoin de plus d'informations et Suivant](/images/docs/fr/triage/triage-1-meldung.webp)

## Définir le flux du message

1. Choisissez les domaines qui doivent recevoir le message. Le bouton plus d'une étiquette attribue le domaine, le bouton moins le retire.
2. Si le message doit atteindre tout le monde, activez **Renseignements-clés**. La priorité devient « important » et tous les domaines reçoivent le message.
3. Attribuez le message au domaine **Nachrichtenkarte** si quelque chose doit être dessiné sur la carte.
4. Cliquez sur **Suivant**.

![L'étape Flux du message avec l'interrupteur Renseignements-clés et les domaines sous forme d'étiquettes avec bouton plus ou moins](/images/docs/fr/triage/triage-2-meldefluss.webp)

## Personnes et moyens

Si le message concerne des personnes ou des moyens engagés, saisissez-les maintenant. Sinon, cliquez sur **Suivant**.

- [Saisir des personnes lors du triage]({{< relref "/docs/user/how-to/triage/personen-erfassen" >}})
- [Alerter et engager des moyens]({{< relref "/docs/user/how-to/triage/mittel-aufbieten-und-einsetzen" >}})

## Terminer le triage

1. À la dernière étape, cliquez sur **Terminer le triage**.
2. sitrep affiche « Triage enregistré ». Cliquez sur **Prochain message en attente** pour continuer.

![La confirmation « Triage enregistré » avec Prochain message en attente, Ajuster le triage et Feuille de message](/images/docs/fr/triage/triage-gespeichert.webp)

Tout est enregistré en une seule fois. Avec **Ctrl + ↵**, vous passez à l'étape suivante ou, à la dernière étape, vous terminez le triage.

## Modifier un triage après coup

1. Sélectionnez dans la liste le message déjà trié.
2. Dans le résumé, cliquez sur **Ajuster le triage**.
3. Modifiez ce qui est nécessaire et terminez de nouveau le triage.

![Le résumé d'un message trié avec le flux du message et le bouton Ajuster le triage](/images/docs/fr/triage/triage-zusammenfassung.webp)

Vous ne pouvez plus modifier l'heure du message après le triage.

## Si quelque chose ne fonctionne pas

| Message de sitrep | Cause |
|---|---|
| « Cet incident est clôturé. Le triage n'est plus possible. » | L'événement a été fermé. |
| « L'heure ne peut plus être modifiée, car le message a déjà été trié. » | L'heure d'un message trié est verrouillée. |
| « L'heure du message ne peut pas être à plus de cinq minutes dans le futur. » | Corrigez l'heure à l'étape **Message**. |

Tous les champs et statuts figurent dans la référence [Vue du triage et étapes]({{< relref "/docs/user/reference/triage/triage-schritte" >}}).
