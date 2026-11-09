---
title: "Le cycle de vie d'un événement"
description: "Pourquoi un événement peut être ouvert, fermé et supprimé, et ce qui peut être annulé."
weight: 10
---
Un **événement** est le cadre dans lequel tout le reste se déroule: les messages, le triage, les personnes, les moyens et la carte appartiennent toujours à un événement. Il passe par trois étapes.

## Ouvert

Tant qu'un événement est **ouvert**, l'état-major y travaille. Les messages sont saisis et triés, les personnes et les moyens mis à jour, la carte dessinée. Le nom, l'emplacement et les domaines peuvent être modifiés.

## Fermé

Lorsque l'intervention est terminée, l'événement est **fermé**. Il reste entièrement conservé et peut être consulté, mais plus modifié. L'état reste ainsi tel qu'il était à la clôture.

La fermeture est expressément **réversible**: quiconque a le rôle de gestionnaire peut rouvrir l'événement à tout moment. L'idée est qu'un événement peut avoir été fermé trop tôt ou être encore nécessaire après coup. Rien n'est perdu.

## Supprimé

La suppression est la dernière étape et elle est volontairement plus difficile à atteindre que les autres:

- Elle n'est possible que pour un événement **fermé**. Qui veut supprimer doit donc d'abord le clôturer.
- Elle est réservée au **propriétaire**, même si l'événement est ouvert à tous.
- Elle ne peut **pas être annulée** dans sitrep.

Supprimé ne signifie pas que les données sont détruites: les données d'un événement supprimé restent archivées dans la base de données. Dans sitrep même, il est impossible de le restaurer, cela n'est possible qu'avec un accès à la base de données. Adressez-vous alors à l'administration.

C'est pourquoi la règle au quotidien est la suivante: laissez un événement terminé **fermé**. Ne supprimez que s'il doit vraiment disparaître, par exemple pour un exercice qui n'est pas conservé.

## Ce que l'exploitation peut régler en plus

L'administration peut régler sitrep de façon que les événements soient **fermés automatiquement** lorsqu'ils sont restés ouverts un certain nombre de jours, et que les événements fermés depuis longtemps soient **archivés**. Les deux options sont désactivées par défaut. Les réglages figurent dans la [configuration]({{< relref "/docs/admin/reference/konfiguration" >}}).

## Qui a le droit de faire quoi

Le fait que la fermeture, la réouverture et la suppression demandent des rôles différents est voulu: les éditeurs conduisent l'événement, les gestionnaires le terminent et le rouvrent, seul le propriétaire supprime. Le tableau figure dans [Statut et droits d'un événement]({{< relref "/docs/user/reference/ereignis/status-und-rechte" >}}). Pourquoi le contrôle d'accès est conçu ainsi, c'est expliqué dans [Comment le contrôle d'accès est pensé]({{< relref "/docs/user/explanation/allgemein/zugriffssteuerung" >}}).
