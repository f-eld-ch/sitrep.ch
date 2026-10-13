---
title: "À propos de sitrep"
slug: "a-propos"
description: "À quoi sert sitrep, qui est derrière le projet et comment contribuer ou utiliser sitrep."
---
sitrep est un logiciel de représentation électronique de la situation pour les états-majors. Il permet de saisir, coordonner et communiquer les messages pendant un événement, sans gêner le travail : pas un système de plus à tenir à jour en parallèle, mais un outil qui simplifie les processus manuels fastidieux et accélère le flux de messages au sein de l'état-major.

sitrep est conçu pour la protection civile et d'autres états-majors civils, pas pour un usage militaire.

## À quoi sert sitrep

- **Saisir les messages :** le journal d'intervention consigne tous les messages entrants et sortants. La saisie numérique est plus rapide et moins sujette aux erreurs que le bulletin de message écrit à la main.
- **Distribuer les messages :** lors du triage, les messages sont attribués aux domaines spécialisés, sous forme numérique ou en bulletin de message imprimé.
- **Représenter la situation :** la carte de situation montre la situation actuelle avec une partie des symboles de l'Office fédéral de la protection de la population (OFPP).

Plus de détails sur la page [Fonctionnalités]({{< relref "/funktionen" >}}).

## Open source

sitrep est un logiciel libre sous licence [AGPL-3.0](https://github.com/f-eld-ch/sitrep/blob/HEAD/LICENSE). Vous pouvez l'utiliser, l'exploiter vous-même, le modifier et le faire évoluer, à condition que les modifications profitent à nouveau à tous. Le code source se trouve dans le [dépôt GitHub](https://github.com/f-eld-ch/sitrep).

## Contribuer

- **Retours et souhaits** sont les bienvenus. Consultez d'abord les [discussions](https://github.com/f-eld-ch/sitrep/discussions) et les [issues ouvertes](https://github.com/f-eld-ch/sitrep/issues).
- **Traductions :** nous les gérons sur [Transifex](https://explore.transifex.com/f-eld/sitrep/). sitrep existe en allemand, français, italien et anglais. Corrections et nouvelles langues nous aident beaucoup.
- **Failles de sécurité :** ne les signalez pas publiquement, mais selon la [politique de sécurité](https://github.com/f-eld-ch/sitrep/security/policy).

## Essayer

Créez un compte dans l'environnement de démonstration et commencez tout de suite : [demo.sitrep.ch](https://demo.sitrep.ch). Les données sont effacées régulièrement. N'y menez pas d'intervention réelle.

## Exploitation

- **L'exploiter vous-même :** sitrep fonctionne dans le navigateur, demande peu de ressources et tourne sur un Raspberry Pi, dans une VM ou comme conteneur Docker. Les guides se trouvent dans la [documentation d'administration]({{< relref "/docs/admin" >}}).
- **En tant que service :** l'[association F-ELD](https://f-eld.ch), qui développe et maintient sitrep, propose sitrep comme service géré à ses membres. L'exploitation se fait sur une infrastructure sécurisée en Suisse, avec [VSHN](https://www.vshn.ch) comme partenaire d'hébergement.

## Contact

Questions sur sitrep ou sur le service : [info@sitrep.ch](mailto:info@sitrep.ch)
