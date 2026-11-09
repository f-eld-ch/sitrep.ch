---
title: "Créer un événement"
description: "Ouvrir un nouvel événement avec un nom, un emplacement et des domaines."
weight: 10
---
Tout utilisateur connecté peut ouvrir un événement. Celui qui le crée en devient le **propriétaire**. Le tutoriel [Votre premier événement]({{< relref "/docs/user/tutorials/ereignis/erstes-ereignis" >}}) offre une introduction guidée. Tous les champs figurent dans la référence [Le formulaire d'un événement]({{< relref "/docs/user/reference/ereignis/ereignis-formular" >}}).

## Créer un événement

1. Ouvrez les **Événements**.
2. Cliquez sur **Créer**.
3. Saisissez le **Nom de l'événement**. Il est obligatoire: tant qu'il manque, l'enregistrement est impossible.
4. Saisissez si nécessaire l'**Emplacement**.
5. Vérifiez les **Domaines** et adaptez-les (voir ci-dessous).
6. Cliquez sur **Enregistrer**.

![Le formulaire Créer un nouvel événement avec les valeurs par défaut sous Domaines](/images/docs/fr/ereignis/ereignis-formular-leer.webp)

sitrep ouvre le nouvel événement dans l'**Éditeur** du journal d'intervention. Vous saisissez ensuite les premiers messages: [Saisir un message]({{< relref "/docs/user/how-to/einsatzjournal/meldung-erfassen" >}}).

## Adapter les domaines

Les domaines sont les services qui reçoivent des messages, par exemple « C Lage » ou « Stabschef ». Les nouveaux événements commencent avec deux valeurs par défaut. Elles dépendent de la langue de l'interface avec laquelle vous créez l'événement.

1. Sous **Ajouter un nouveau domaine**, saisissez le **nom** et l'**abréviation**. Les deux champs sont obligatoires.
2. Cliquez sur le plus. Le domaine figure dans la liste.
3. Le bouton rouge à côté d'un domaine permet de le supprimer. Cela n'est possible que tant que l'événement n'est pas enregistré.

![Le formulaire avec quatre domaines: les deux valeurs par défaut, Sapeurs-pompiers et Services sanitaires](/images/docs/fr/ereignis/ereignis-formular-ausgefuellt.webp)

Le domaine **Carte de renseignements** est toujours présent. Le système le crée, il ne figure pas dans le formulaire.

Après l'enregistrement, les domaines ne peuvent plus qu'être renommés et complétés, voir [Modifier un événement]({{< relref "/docs/user/how-to/ereignis/ereignis-bearbeiten" >}}).

## Créer un événement enfant

Si l'événement dépend d'un événement parent (par exemple l'événement d'une région par rapport à celui du canton), choisissez-le dans le champ **Événement parent**. Plus de détails dans [Lier un événement parent]({{< relref "/docs/user/how-to/ereignis/uebergeordnetes-ereignis-verknuepfen" >}}).

## Qui peut voir l'événement

Le **mode d'accès** détermine si d'autres personnes peuvent voir et modifier l'événement. Il provient de l'accès par défaut de l'administration. Tant que celui-ci n'est pas défini, les nouveaux événements sont **restreints**: vous seul les voyez. Vérifiez l'accès après la création:

- [Gérer l'accès à un événement]({{< relref "/docs/user/how-to/allgemein/ereigniszugriff-verwalten" >}})
- [Définir l'accès par défaut pour les nouveaux événements]({{< relref "/docs/user/how-to/allgemein/standard-zugang" >}})
