.. attention::

   La version française de la documentation n'est pas régulièrement mise à jour.

   Il est recommandé de se réfèrer à la version `anglaise </doc/en/>`_.

.. contents::
   :depth: 3
..

Gestionnaire de Documents
=========================

La documentation est probablement le délivrable le plus important d'un
projet après le logiciel lui-même. Tuleap propose un service
spécifique pour la gestion de la documentation.

Bien que le gestionnaire de documents de Tuleap ne soit pas
comparable à un système de gestion documentaire dédié, il est cependant
extrêmement pratique pour gérer les documents critiques pour votre
communauté d'utilisateurs. Quelques exemples : manuel d'installation,
d'administration ou d'utilisation, documentation des API, Foire aux
Questions, etc...

Les fonctionnalités du gestionnaire de documents sont les suivantes :

-  Le gestionnaire peut gérer n'importe quel type de document.

-  Les documents sont stockés dans des dossiers. Vous pouvez avoir des
   sous-dossiers dans un dossier.

-  Les documents peuvent être édités en ligne (si ils sont embarqués).

-  Les règles de droits d'accès peuvent être définies pour chaque
   dossier ou document.

-  Les documents possèdent des propriétés.

Actions
--------

Le gestionnaire de document permet certaines actions sur les dossiers ou
documents. Ces action sont disponible ou pas suivant les permissions.

Nouveau Document
`````````````````

Cette action est seulement disponible pour les dossiers et permet à
l'utilisateur de créer un nouveau document. Quand vous sélectionnez
cette action, une fenêtre "Nouveau document" est affichée, où vous
pouvez entrer les informations concernant le nouveau document.

Le nouveau document hérite des permissions du dossier parent.

Propriétés
~~~~~~~~~~

Le titre du document est obligatoire. L'utilisateur peut fournir une
description. En fonction du projet, il peut y avoir des propriétés
supplémentaires requise pour définir le document.

Type de document
~~~~~~~~~~~~~~~~

5 types de documents sont disponibles :

-  *Vide:* le document ne sera pas typé. L'utilisateur pourra choisir le
   type définitif après la création.

-  *Lien:* autorise l'utilisateur à pointer un document avec une URL. Le
   document ne sera pas stocké localement dans le manager.

-  *Wiki:* le document peut être créé avec le service wiki.Entrez juste
   le nom correspondant à la nouvelle page wiki. Vous pouvez également
   utiliser une page wiki existante.

-  *Fichier:* n'importe quel type de documents peut être chargé. Depuis
   une présentation PowerPoint à une simple image ou un document office.
   Les fichiers sont versionnés ainsi vous pouvez ajouter de nouvelles
   versions sur les documents existants.

-  *Fichier embarqués:* les documents de type texte ou html peuvent être
   édités en ligne et sont versionnés.

Nouveau Dossier
````````````````

Cette action est seulement disponible pour les dossiers et permet à
l'utilisateur de créer un sous-dossier.

Le nouveau dossier hérite des permissions du dossier parent.

Propriétés
~~~~~~~~~~

Comme pour les documents, le titre des dossier est obligatoire.
L'utilisateur peut fournir une description. Selon les projets, il peut y
avoir des propriétés supplémentaires requises pour définir les dossiers.

Propriétés
``````````

Cette action permet à l'utilisateur de modifier les propriétés d'un document
ou d'un dossier, si il en a les droits.

Notifications
``````````````

Cette action permet à l'utilisateur de s'abonner à toute modification
d'un élément. Ainsi il pourra être prévenu de l'ajout d'un document dans
un dossier, de la modification d'un document, de son déplacement, …

Historique
```````````

Cette action permet à l'utilisateur de voir les journaux et les
anciennes versions (si disponibles).

Nouvelle version
`````````````````

Cette action permet à l'utilisateur de mettre à jour un document de type
fichier ou fichier embarqué, le nom d'une page
wiki, ou l'url d'un lien.

Permissions
````````````

Cette action permet à l'utilisateur de gérer les permissions d'un
document ou d'un dossier. Les permissions d'un dossier peuvent être
appliquées récursivement à sa sous-hiérarchie.

Lecteurs
~~~~~~~~

Ceux qui peuvent lire un document ou accèder au contenu d'un dossier.

"lecture" signifie accès au document/dossier, voir ses propriétés, voir
son historique.

Merci de noter que si un utilisateur ne peut pas lire un dossier alors
il ne pourra pas accèder à tout les éléments en dessous de lui, quelques
soient leurs permissions.

Rédacteurs
~~~~~~~~~~

Les Rédacteurs sont des lecteurs qui peuvent modifier un document ou
créer un sous-élément dans un dossier.

"Modifier" signifie mettre à jour/ajouter une nouvelle version, modifier
un lien ou le nom d'un page wiki, modifier les propriétés, déplacer un
élément ou le supprimer.

Gestionnaires
~~~~~~~~~~~~~

Les gestionnaires sont des rédacteurs qui peuvent aussi définir les
permissions d'un document ou d'un dossier. Ils peuvent aussi consulter
les historique d'accès à un document.

Couper/Copier/Coller
````````````````````

Les documents ou les dossiers peuvent être copiés ou déplacés au sein des
documents du projet.

L'utilisateur ne peut déplacer un élément que si les dossiers source et
destination sont modifiables.

Supprimer
`````````

Les documents ou dossiers peuvent être supprimés. Si un utilisateur veut
supprimer un dossier, il sera averti que tous les sous-éléments seront
supprimés (si il a les permissions ad-hoc).

Pour pouvoir supprimer un élément, l'utilisateur doit avoir le droit
"rédacteur" sur le répertoir parent.

Administration
---------------

Permissions
````````````

Cette section définie qui peut administrer le gestionnaire de documents.

Les administrateurs du gestionnaire de documents ont tous les droits sur
tous les éléments du gestionnaires.

Propriétés
```````````

Cette section gère les propriétés des documents. Chaque propriété peut
être valuée lors de la soumission ou de l'édition d'un document.

Il n'y a pas de permissions spécifiques aux propriétés. Si un
utilisateur peut lire(modifier) un document, il peut également
lire(modifier) chacune de ses propriétés.
