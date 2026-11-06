---
title: "Votre premier triage"
description: "Trier deux messages en saisissant des personnes et un moyen engagé."
weight: 10
---
Dans ce tutoriel, vous triez les deux messages du tutoriel [Saisir votre premier message]({{< relref "/docs/user/tutorials/einsatzjournal/erste-meldung" >}}), événement « Unwetter Bergdorf – Murgang Dorfbach ». Vous saisissez des personnes, alertez un moyen, l'engagez et consultez à la fin la vue d'ensemble des personnes et le tableau des moyens. Tous les noms et tous les chiffres sont fictifs.

Il vous faut :

- les deux messages saisis dans le tutoriel précédent, au statut **en attente**,
- l'autorisation de trier des messages,
- environ 15 minutes.

{{< note type="info" >}}
Les images proviennent d'un événement d'exercice contenant d'autres messages. Vos numéros de message et vos totaux sont plus petits.
{{< /note >}}

## 1. Contrôler le premier message

1. Ouvrez **Triage** dans le journal d'intervention. sitrep sélectionne le plus ancien message encore ouvert, donc le premier : le message du service sanitaire.
2. À l'étape **Message**, contrôlez la communication, le destinataire, l'interlocuteur, l'heure et le contenu.
3. Cliquez sur **Suivant**.

![Triage, étape 1: contrôler le message. À gauche la liste des messages, à droite le message et la barre des étapes.](/images/docs/fr/triage/triage-1-meldung.webp)

## 2. Définir le flux du message

1. Attribuez le message aux domaines **C Lage** et **Chef Einsatz** : cliquez sur le bouton plus des deux domaines.
2. Cliquez sur **Suivant**.

Le message n'est pas un renseignement-clé. Laissez l'interrupteur désactivé.

![Triage, étape 2: flux du message avec l'interrupteur Renseignements-clés et les domaines C Lage et Chef Einsatz attribués](/images/docs/fr/triage/triage-2-meldefluss.webp)

## 3. Saisir les personnes

1. Réglez **Blessés** sur `3`. Les autres catégories restent à 0.
2. À droite, vous voyez l'aperçu de la modification.
3. Cliquez sur **Suivant**.

![Triage, étape 3: personnes avec trois blessés et l'aperçu de la vue d'ensemble des personnes](/images/docs/fr/triage/triage-3-personen.webp)

## 4. Alerter le moyen

1. À l'étape **Moyens**, cliquez sur **Alerter un nouveau moyen**.
2. Choisissez la formation **Services sanitaires**.
3. Saisissez `Region Bergdorf` comme désignation du lieu et `Gruppe 2` comme nom, puis indiquez `6` personnes.
4. sitrep propose la taille **Groupe**. Cliquez sur **Alerter un moyen**.
5. Cliquez sur **Terminer le triage**.

![Triage, étape 4: le formulaire Alerter un nouveau moyen avec la formation Services sanitaires, Region Bergdorf, Gruppe 2 et 6 personnes](/images/docs/fr/triage/triage-4-mittel-aufbieten.webp)

sitrep affiche « Triage enregistré ». Le moyen a le statut **Alerté**.

![La confirmation « Triage enregistré » avec le bouton « Prochain message en attente »](/images/docs/fr/triage/triage-gespeichert.webp)

## 5. Trier le deuxième message

1. Cliquez sur **Prochain message en attente**. C'est le message indiquant que Gruppe 2 est arrivé.
2. Dans le flux du message, attribuez les domaines **C Lage** et **Nachrichtenkarte**, puis cliquez sur **Suivant**.
3. À l'étape **Personnes**, rien ne change. Cliquez sur **Suivant**.
4. À l'étape **Moyens**, recherchez « Gruppe 2 » dans le champ de recherche, cliquez sur le moyen, puis sur **éditer**. Cliquez sur **Marquer prêt**.

![La fiche du moyen alerté avec le champ Contact et le bouton Marquer prêt](/images/docs/fr/triage/triage-mittel-aufgeboten.webp)

5. La fiche se referme. Cliquez de nouveau sur **éditer**, saisissez `Erstversorgung und Transport` comme **Tâche principale** et `Dorfstrasse` comme **Lieu d'engagement**, puis cliquez sur **Engager**.

![La fiche du moyen prêt avec la tâche principale, le lieu d'engagement et les boutons Engager et Libérer](/images/docs/fr/triage/triage-mittel-einsetzen.webp)

6. Cliquez sur **Terminer le triage**.

## 6. Consulter le résultat

1. Ouvrez **Personnes**. Les blessés sont maintenant 3 de plus qu'auparavant.
2. Ouvrez **Moyens**. « Gruppe 2 » des services sanitaires est **Engagé**, avec 6 personnes, la tâche principale et le lieu d'engagement. Les heures affichées sont celles de vos deux messages.

![La vue d'ensemble des personnes avec les cinq catégories après le tutoriel](/images/docs/fr/triage/personenuebersicht-nach-tutorial.webp)

![Le tableau des moyens, groupé par formation, avec statut, coordonnées, heures, tâche principale et lieu d'engagement](/images/docs/fr/triage/mitteltabelle-nach-tutorial.webp)

Vous avez trié deux messages et vu comment les vues d'ensemble découlent du triage. Pour la suite :

- Le deuxième message est attribué au domaine Nachrichtenkarte. Le tutoriel [Votre première carte de renseignements]({{< relref "/docs/user/tutorials/lagebild/erste-nachrichtenkarte" >}}) vous montre comment le dessiner.
- Pour le quotidien : [Trier un message]({{< relref "/docs/user/how-to/triage/meldung-triagieren" >}}).
- Pourquoi le triage est le bon endroit pour ces informations : [Triage et tableau de la situation]({{< relref "/docs/user/explanation/triage/triage-und-lagebild" >}}).
