---
title: "Événements parents et événements enfants"
description: "Comment un organe de conduite cantonal réunit les événements des régions dans un événement parent."
weight: 20
---
sitrep connaît les événements sur **deux niveaux**: un événement **parent** (l'événement principal) et, en dessous, des événements **enfants**. Le deuxième niveau permet à plusieurs organes de conduite de tenir chacun leur propre événement, tout en laissant à un organe supérieur la vue de toute la situation.

## Le cas d'utilisation

En cas d'intempéries dans le canton, chaque **organe de conduite régional** (OCR) tient son propre événement sitrep: avec ses propres messages, son propre triage, ses propres domaines, ses propres personnes et moyens et sa propre carte.

L'**organe de conduite cantonal** (OCC) ouvre pour cela l'événement **parent**. Chaque événement d'un OCR lui est rattaché comme événement enfant. L'OCC réunit ainsi les événements de tous les OCR et voit la situation du canton, sans que les régions aient à travailler autrement.

![La liste des événements: sous le Kantonales Führungsorgan figurent les événements des régions](/images/docs/fr/ereignis/ereignisliste-hierarchie.webp)

## Ce que l'événement parent réunit

- **Personnes:** la vue d'ensemble des personnes de l'événement principal additionne les chiffres de tous les événements enfants. En dessous, ils figurent un par un sous **Incidents enfants**.
- **Moyens:** la vue d'ensemble des moyens affiche les moyens des événements enfants comme des groupes à part, marqués « Incident enfant », et les inclut dans les totaux.
- **Carte:** les couches des événements enfants apparaissent sur la carte de l'événement principal.

![La vue d'ensemble des personnes du Kantonales Führungsorgan avec les chiffres totaux et les événements enfants](/images/docs/fr/ereignis/uebergeordnet-personen.webp)

![La vue d'ensemble des moyens du Kantonales Führungsorgan avec les moyens des événements enfants](/images/docs/fr/ereignis/uebergeordnet-mittel.webp)

## Ce que chaque événement reste pour lui-même

Les événements ne sont pas les parties d'un grand événement, mais des événements propres qui sont seulement réunis:

- Chaque événement a son propre **accès**. Qui a le droit de voir et de modifier un événement est déterminé par son contrôle d'accès, voir [Contrôle d'accès]({{< relref "/docs/user/reference/allgemein/zugriffssteuerung" >}}).
- Chaque événement est **fermé**, ouvert et supprimé séparément. La fermeture ou la suppression de l'événement principal ne change rien pour les événements enfants: ils restent ouverts et liés à lui ou, après une suppression, figurent de nouveau au niveau supérieur de la liste.
- Les **domaines** valent pour chaque événement.

## Pourquoi seulement deux niveaux

Deux niveaux suffisent pour la répartition par régions et gardent la réunion lisible. Un événement est donc soit un événement principal, soit un événement enfant, jamais les deux. Seuls des événements ouverts peuvent être choisis comme événement principal. Les détails figurent dans [Lier un événement parent]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}).
