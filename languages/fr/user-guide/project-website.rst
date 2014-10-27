.. contents::
   :depth: 3
..

Site Web d'un projet
====================

Visiter un site Web
--------------------

Lorsqu'un projet est créé sur Tuleap un site Web spécifique
est initialisé. Vous pouvez accéder au site Web de deux façons
différentes :

-  En tapant l'URL suivant sur votre navigateur Web favori (nom\_projet
   est le nom court du projet) :

   ::

       http://nom_projet.tuleap.example.com
                 

   Ou si votre serveur Tuleap est en mode sécurisé :

   ::

       https://nom_projet.tuleap.example.com
                 

-  En cliquant sur le lien "Site Web" dans la barre de services du
   projet en haut de la page de sommaire.

Si l'équipe de projet n'a pas créé ses propres pages Web, vous verrez
apparaître la page d'accueil par défaut vous informant que le site sera
bientôt disponible complétée d'un lien de retour vers le site
Tuleap.

Création d'un site Web
-----------------------

Emplacement et structure des répertoires
`````````````````````````````````````````

Chaque projet possède son propre emplacement de stockage des pages HTML,
des images, des fichiers de données et des documents qui constituent le
site Web. Tous ces fichiers doivent être placés dans :

::

    /home/groups/nom_projet

Si vous avez la possibilité d'utiliser votre compte Shell (voir ?) pour
vous connecter au serveur Tuleap et vous placer dans ce
répertoire en utilisant la commande Unix "cd /home/groups/nom\_projet"
vous verrez trois répertoires :

-  **htdocs** : c'est dans ce répertoire que doivent se trouver toutes
   les pages HTML y compris celles incluant du PHP ou des directives SSI
   (voir ci-dessous pour plus de détails). Toutes les images, icônes ou
   documents utilisés ou référencés dans vos pages Web doivent aussi se
   trouver à  cet endroit (ou dans un sous-répertoire sous htdocs). Dans
   le jargon Apache le répertoire ``/home/groups/projectname/htdocs``
   est appelé le 'Document Root' (Racine des documents) de votre site
   Web.

       **Tip**

       Apache est un serveur HTTP développé par la Consortium Apache. Il
       est disponible sous une licence Open Source et il est de loin de
       le serveur Web le plus populaire avec plus de 60% de part de
       marché. Pour plus d'information consultez le site Web Apache sur
       `http://httpd.apache.org <http://www.apache.org>`__

   Apache s'attend à  ce que la page d'accueil de votre site Web se
   trouve dans un des fichiers suivants :

   -  ``index.html, index.htm`` pour les pages en HTML pur

   -  ``index.shtml`` pour les pages utilisant les extensions SSI de
      Apache

   -  ``index.php`` si vous incluez du PHP dans vos pages.

   Si votre page d'accueil se nomme index.php, prenez soins de renommer
   le fichier index.php d'origine en utilisant les commandes suivantes
   depuis votre compte Shell :

   ``
               cd /home/groups/nom_projet/htdocs
               mv index.php index_default.php ``

-  **cgi-bin** : ce répertoire accueille tous les scripts CGI. Les
   scripts CGI peuvent être écrits en Perl, Python , Shell ou même C.

-  **log** : il s'agit d'un répertoire réservé. N'y placez aucun
   fichier.

Utilisez PHP pour votre site Web
`````````````````````````````````

Les membres d'un projet peuvent concevoir des sites Web sophistiqués en
utilisant le `langage PHP <http://www.php.net>`__. PHP est en train de
devenir un langage de scripting serveur pour le Web extrêmement
populaire. PHP est facile à  apprendre , il est optimisé pour le Web et
interagit aisément avec les bases de données SQL.

Si vous décidez d'inclure des scripts PHP dans les pages Web de votre
projet, assurez-vous d'utiliser l'extension ".php" pour tous les
fichiers concernés. Pour les pages contenant du HTML pur utilisez les
extensions habituelles "htm" ou "html".

Pour des `raisons de
sécurité <http://www.php.net/manual/en/security.php>`__ vos scripts PHP
ont uniquement le droit d'accéder à  des fichiers situés sous la racine
des documents (DocumentRoot) de votre projet à  savoir
``/home/groups/nom_projet/htdocs``.

Publication du site Web
````````````````````````

Vous pouvez utiliser différentes méthodes pour publier les pages de
votre site Web sur le serveur Tuleap :

-  Édition à  distance avec des éditeurs HTML comme celui de
   Netscape/Mozilla, Microsoft Frontpage ou Emacs avec accès FTP
   transparent.

-  Édition locale sur votre machine et transfert des fichiers soit par
   FTP ou, encore mieux, par SCP.

-  De petits changements peuvent aussi être effectués depuis votre
   compte Shell Tuleap en utilisant un éditeur comme vi,
   emacs mais nous vous déconseillons d'effectuer des modifications
   lourdes par ce biais.

Netscape Composer 4.x
~~~~~~~~~~~~~~~~~~~~~

Vous pouvez utiliser Netscape Composer 4.x pour éditer des pages HTML à 
distance. Pour ce faire affichez la page concernée depuis le navigateur
Netscape puis utilisez l'entrée du menu Fichier->Editer la page pour
modifier le contenu de la page et cliquez finalement sur le bouton
'Publier' dans la barre d'outil située en haut de la page.

Saisissez les paramètres suivants dans la boîte de dialogue :

-  Upload Files to this location :

   ::

       ftp://nom_projet.tuleap.example.com/home/groups/nom_projet/htdocs/

-  Login and Password : tapez votre nom d'utilisateur et votre mot de
   passe Tuleap. Cliquez sur la case à  cocher pour éviter
   d'avoir à  taper le mot de passe à  chaque opération de sauvegarde.

Macromedia Dreamweaver
~~~~~~~~~~~~~~~~~~~~~~

Vous pouvez utiliser DreamWeaver pour créer le site Web de votre projet.
Contrairement à FrontPage, DreamWeaver supporte parfaitement la
publication à distance par FTP. Pour créer un nouveau site utilisez le
menu Site -> New Site. Dans la boîte de dialogue renseignez le nom du
site et le répertoire local pointant à la racine. Choisissez 'FTP
access' comme méthode d'accès et indiquez
``nom_projet.tuleap.example.com`` en tant que serveur hôte et
``/home/groups/nom_projet/htdocs`` pour le répertoire de publication .
Le nom d'utilisateur et le mot de passe sont les mêmes que ceux de votre
compte Tuleap.

Édition locale et transfert à distance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Pour ceux d'entre vous qui utilisez un éditeur HTML dépourvu d'une
fonctionnalité d'exportation des fichiers à distance, il est possible de
transférer vos fichiers HTML par d'autres moyens.

-  **FTP** : c'est le moyen le plus simple de transférer vos pages Web
   vers l'emplacement Tuleap distant. Utilisez un client ftp
   de votre choix pour vous connecter au serveur
   ``nom_projet.tuleap.example.com`` et utilisez votre nom d'utilisateur
   et mot de passe Tuleap. Une fois connecté, utilisez la
   commande suivante :

   ::

       cd /home/groups/nom_projet/htdocs

   et utilisez enfin la commande put (ou mput) pour transférer les
   fichiers modifiés. Vérifiez que les fichiers ont été correctement mis
   à jour à l'aide de votre navigateur. Prenez garde au cache de votre
   navigateur et assurez vous de forcer le rechargement de la page pour
   être bien sûr d'afficher la dernière version !

-  **SCP** :

   ::

       scp -r * nom_utilisateurSYS_SHELL_HOST:/home/groups/nom_projet/htdocs/

   où nom\_utilisateur est votre nom d'utilisateur Tuleap.
   L'option -r déclenche une copie récursive et copie donc tous les
   fichiers dans le répertoire ainsi que tous les autres fichiers dans
   les sous-répertoires tout en préservant la même structure
   arborescente.
