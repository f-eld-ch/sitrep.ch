---
title: "Le formulaire d'un événement"
description: "Champs, indications obligatoires et valeurs par défaut lors de la création et de la modification."
weight: 20
---
Le même formulaire sert à créer et à modifier un événement. Instructions: [Créer un événement]({{< relref "/docs/user/how-to/ereignis/ereignis-erstellen" >}}) et [Modifier un événement]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}).

![Le formulaire Créer un nouvel événement avec les valeurs par défaut sous Domaines](/images/docs/fr/ereignis/ereignis-formular-leer.webp)

## Ouvrir le formulaire

| Formulaire | Où |
|---|---|
| **Créer un nouvel événement** | Bouton **Créer** dans la liste des événements |
| **Modifier un événement** | Menu de l'événement (souris sur le nom de l'événement dans la barre de navigation, puis **Modifier un événement**) ou bouton **Éditer** sur la carte dans la liste des événements |

## Champs

| Champ | Obligatoire | Contenu et règles |
|---|---|---|
| **Nom de l'événement** | oui | Nom de l'événement. Tant qu'il est vide, l'enregistrement est impossible. |
| **Événement parent** | non | Choix parmi les événements ouverts qui n'ont pas eux-mêmes d'événement parent. Valeur par défaut: « aucun événement parent ». Lors de la modification, le champ manque si l'événement a ses propres événements enfants. |
| **Emplacement** | non | Texte libre |
| **Domaines** | – | Services qui reçoivent des messages. Pour chaque domaine, un **nom** et une **abréviation** |

## Domaines

- Le **nom** figure dans le flux du message du triage, l'**abréviation** comme petite marque sur les messages.
- Les nouveaux événements commencent avec deux valeurs par défaut. Elles sont fixées dans sitrep et suivent la **langue de l'interface** au moment de la création:

| Langue | Valeur 1 (nom / abréviation) | Valeur 2 (nom / abréviation) |
|---|---|---|
| Allemand | C Lage / Lage | Stabschef / SC |
| Français | Chef du suivi de la situation / C suivi | Chef d'état-major / C EM |
| Italien | Capo ANSIT / ANSIT | Capo di stato maggiore / C SM |

- Sous **Ajouter un nouveau domaine**, vous en ajoutez d'autres. Le nom et l'abréviation sont tous deux obligatoires, sinon le plus est bloqué.
- Un domaine qui n'est pas encore enregistré peut être retiré avec le bouton rouge.
- Un domaine enregistré peut seulement être **renommé**, pas supprimé.
- Le domaine **Carte de renseignements** est créé par le système. Il ne figure pas dans le formulaire et n'est pas modifiable.

![Le formulaire avec quatre domaines: les deux valeurs par défaut, Sapeurs-pompiers et Services sanitaires](/images/docs/fr/ereignis/ereignis-formular-ausgefuellt.webp)

## Lors de la modification, en plus

- Le titre est **Modifier un événement**.
- Sous le formulaire se trouvent le **Mode d'accès** et l'**Accès à l'événement**. Voir [Gérer l'accès à un événement]({{< relref "/docs/user/how-to/allgemein/ereigniszugriff-verwalten" >}}).

![Le formulaire Modifier un événement avec l'événement parent choisi](/images/docs/fr/ereignis/ereignis-uebergeordnet-gewaehlt.webp)

## Après l'enregistrement

sitrep ouvre l'**Éditeur** du journal d'intervention de cet événement.
