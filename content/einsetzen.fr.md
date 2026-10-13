---
title: "Mettre sitrep en œuvre chez vous"
menu_title: "Mise en œuvre"
slug: "mise-en-oeuvre"
description: "Essayer, exploiter soi-même ou utiliser comme service : comment mettre sitrep en œuvre dans votre organisation."
---
Il y a trois façons d'utiliser sitrep. Elles ne s'excluent pas : la plupart commencent par la démo.

## 1. Essayer

Dans l'[environnement de démonstration](https://demo.sitrep.ch), créez un compte (ou connectez-vous avec GitHub) et commencez tout de suite. La démo tourne toujours avec la version de développement actuelle. Les données sont effacées régulièrement : n'y menez donc pas d'intervention réelle.

## 2. L'exploiter soi-même

sitrep est un logiciel libre ([AGPL-3.0](https://github.com/f-eld-ch/sitrep/blob/HEAD/LICENSE)) qui fonctionne dans le navigateur avec des exigences minimales. Vous pouvez l'exploiter sur un Raspberry Pi, dans une machine virtuelle ou comme conteneur Docker.

Il vous faut pour cela :

- un serveur Linux. Pour Fedora, RHEL, Rocky Linux, AlmaLinux, Debian et Ubuntu, des paquets signés sont disponibles sur [packages.sitrep.ch](https://packages.sitrep.ch)
- une base de données PostgreSQL
- pour l'exploitation productive, un fournisseur OpenID Connect pour l'authentification

Un guide pas à pas se trouve sous [Installation & Setup]({{< relref "/docs/admin/how-to/setup-with-local-postgres" >}}) (en anglais). La gestion des accès aux événements et aux groupes est décrite dans la [documentation des accès]({{< relref "/docs/admin/reference/access-control" >}}) (en anglais).

L'[association F-ELD](https://f-eld.ch) vous soutient lors de la mise en place et de l'exploitation. Écrivez-nous à [info@sitrep.ch](mailto:info@sitrep.ch).

## 3. L'utiliser comme service

L'[association F-ELD](https://f-eld.ch), qui développe sitrep, propose sitrep comme service géré à ses membres. L'exploitation se fait sur une infrastructure sécurisée en Suisse, avec [VSHN](https://www.vshn.ch) comme partenaire d'hébergement. Vous n'avez aucune installation à gérer.

Nous répondons volontiers aux questions sur le service et l'adhésion : [info@sitrep.ch](mailto:info@sitrep.ch).

## Quelle voie nous convient ?

| Vous voulez … | Alors |
|---|---|
| d'abord découvrir sitrep | Environnement de démonstration |
| un contrôle total des données et de l'exploitation | L'exploiter soi-même, avec le soutien de F-ELD |
| ne pas monter votre propre informatique pour cela | Comme service |

Pour savoir comment introduire et évaluer sitrep dans votre état-major, voir [Pour votre état-major]({{< relref "/fuer-ihren-stab" >}}).
