---
title: "Triage et tableau de la situation"
description: "Pourquoi les personnes et les moyens sont saisis lors du triage et comment le tableau de la situation en découle."
weight: 10
---
## Le problème

Un état-major de conduite doit pouvoir dire à tout moment combien il y a de blessés, combien de personnes sont disparues et quels moyens sont engagés. Les réponses se trouvent dans les messages des dernières heures. Si on les additionne après coup, cela prend du temps et des erreurs s'y glissent : un message compté deux fois, un oublié, un état intermédiaire dépassé.

## L'idée : saisir une fois, au bon endroit

Chaque message est de toute façon lu et évalué, lors du triage. C'est là que vous définissez qui doit recevoir le message. sitrep va un pas plus loin : celui qui trie saisit aussi ce que le message dit de nouveau sur les **personnes** et les **moyens engagés**. La vue d'ensemble des personnes, la vue d'ensemble des moyens et la carte de renseignements en découlent. Il n'y a pas de seconde saisie.

Dans le manuel de l'OFPP *Aide-mémoire Intervention suivi de la situation*, le triage est le point où les messages entrent dans le cycle de traitement de la situation et où l'on décide quels contenus sont consignés dans quels produits. La vue d'ensemble des moyens fait partie des produits standard du domaine spécialisé Lage.

## Quatre raisons pour lesquelles cela se fait lors du triage

- **L'information est fraîche.** Celui qui a le message sous les yeux le comprend et peut poser immédiatement des questions.
- **On ne recompte pas.** Chaque modification est saisie exactement une fois. Les doubles comptages et les messages oubliés deviennent moins probables.
- **Tout le monde travaille avec les mêmes chiffres.** La vue d'ensemble des personnes, la vue d'ensemble des moyens et le dashboard proviennent des mêmes saisies de triage et ne se contredisent pas.
- **Chaque chiffre a une origine.** La question « D'où viennent les 37 sans-abri? » ramène au message.

## Pas de travail supplémentaire

Si un message ne concerne ni personnes ni moyens, vous parcourez les étapes avec **Suivant**. Le travail dans l'outil est le travail dans le processus : ce que vous décidez lors du triage est en même temps l'entrée dans les vues d'ensemble.

## Le résultat

![Le dashboard avec les derniers messages, la carte de renseignements, la vue d'ensemble des personnes et les moyens par formation](/images/docs/fr/triage/dashboard.webp)

- [Vue d'ensemble des personnes]({{< relref "/docs/user/reference/triage/personenkategorien" >}}) : les états des cinq catégories
- [Vue d'ensemble des moyens]({{< relref "/docs/user/reference/triage/mitteltabelle" >}}) : le tableau des moyens par formation
- [Carte de renseignements]({{< relref "/docs/user/reference/lagebild/nachrichtenkarte" >}}) : la carte qui suit l'état des messages dessinés

Les vues d'ensemble correspondent à l'état des messages triés. Les messages encore ouverts n'y figurent pas. La manière dont les chiffres sont comptés est expliquée dans [Comptage des personnes et des moyens]({{< relref "/docs/user/explanation/triage/personen-und-mittelzaehlung" >}}).
