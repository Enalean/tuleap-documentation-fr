.. attention::

   La version française de la documentation est n'est pas régulièrement mise à jour. 
   
   Il est recommandé de se réfèrer à la version `anglaise </doc/en/>`_.

.. contents::
   :depth: 3
..

Outils de communication
=======================

L'un des objectifs de Tuleap est de fournir aux développeurs
des outils de développement et de gestion de projets efficaces. D'autre
part, Tuleap doit aussi devenir le canal de communication
favori de tous les utilisateurs puisqu'une collaboration et une
communication efficace est capitale pour les équipes de projets et leurs
communautés.

A cette fin, Tuleap propose un ensemble de services de
communication intégrés, que l'équipe de projet peut personnaliser. Cela
inclut les listes de diffusion, le service d'annonces (news), les forums
Web et un plug-in de messagerie instantanée.

Listes de distribution
-----------------------

Création
`````````

Chaque projet peut créer autant de listes de diffusion que nécessaire.
Pour ce faire cliquez sur le lien "Listes" dans la barre de menu
principale du projet puis sur le lien "Administration" de la barre de
menu du service.

Pour créer une nouvelle liste de diffusion il suffit de lui donner un
nom, une description et de préciser s'il s'agit d'une liste publique ou
privée. Une liste privée n'est pas visible sur la page d'accueil du
service sauf pour les membres du projet. Ainsi les autres utilisateurs
ne peuvent pas s'y inscrire ni poster de messages.

Dans le but de minimiser les conflits de nom entre listes de diffusion
des différents projets, leur nom suit le modèle suivant :

::

    nomprojet-nomliste@SYS_LISTS_HOST

Où :

-  ``nomprojet`` est le nom court du projet tel qu'il a été défini
   durant la phase d'enregistrement du projet.

-  ``nomliste`` est le nom que vous avez choisi pour votre liste de
   diffusion.

    **Note**

    Lorsque vous créez une liste de diffusion vous en devenez
    l'administrateur. En tant qu'administrateur, vous recevrez des
    instructions complémentaires par e-mail peu après la création de la
    liste de diffusion. Il s'agit d'un message important contenant des
    URLs vers les pages d'information et d'administration de la liste de
    diffusion ainsi que le mot de passe par défaut généré par
    Tuleap permettant d'accéder aux fonctions
    d'administration. Gardez-le dans un endroit sûr !

    **Tip**

    Un projet hébergé sur Tuleap devrait toujours créer au
    moins une liste de diffusion (ou un forum Web) où les utilisateurs
    peuvent poster leurs questions et leurs commentaires. Cette liste
    est typiquement appelée ``nomprojet-interest@SYS_LISTS_HOST``. Nous
    vous encourageons vivement à suivre cette pratique bien établie.

Administration
```````````````

L'administration d'une liste de diffusion se fait intégralement via
l'interface Web. Vous pouvez accéder à la page d'administration de la
liste de diffusion en utilisant l'URL que vous avez reçu lors de la
création de la liste de diffusion. Si vous avez égaré cette URL la voici
à nouveau :

::

    http://SYS_LISTS_HOST/mailman/admin/nomliste

La page d'administration vous permet de régler de nombreux paramètres de
la liste de diffusion, de gérer les membres, les administrateurs, la
confidentialité, le message de bienvenue aux nouveaux inscrits, etc.
GNU/Mailman, le gestionnaire de liste de diffusion utilisé par
Tuleap, est un logiciel très riche et nous vous invitons à
visiter la page d'administration au moins une fois pour avoir une idée
de l'éventail des fonctionnalités.

    **Note**

    Veuillez noter que les administrateurs d'un projet ne sont pas
    automatiquement administrateurs des listes de diffusion et le mot de
    passe d'administration d'une liste de diffusion est différent de
    tout autre mot de passe d'utilisateurs Tuleap.

(Dés)Inscription, archive et préférences
`````````````````````````````````````````

A moins qu'une liste de diffusion ne soit privée, tout utilisateur
Tuleap peut s'y inscrire. Pour ce faire il suffit de cliquer
sur le lien "Listes" dans la barre de services du projet, puis sur le
lien "(Dés)Abonnement/Préférences" de la liste de diffusion concernée.
Ensuite suivez les instructions affichées à l'écran.

Le gestionnaire de liste de diffusion de Tuleap
(GNU/Mailman) archive aussi l'ensemble des messages échangés sur la
liste de diffusion. En suivant le lien "Archive" sur la même page que
précédemment vous pourrez consulter les messages archivés regroupés par
mois. Veuillez noter que la version actuelle de l'archiveur ne garde pas
trace des attachements au format MIME.

Annonces
---------

Le service d'annonces vient en complément du service de listes de
diffusion. Il vous permet de publier les actualalités du projet. Tous
les évènements survenant dans la vie de votre projet peuvent faire
l'objet d'une annonce : une nouvelle personne dans l'équipe, une
nouvelle version du logiciel, des informations sur les technologies
liées au projet et pourquoi pas l'annonce de votre mariage où l'arrivée
de votre petit sixième :-). Ne gardez pas votre projet dans l'ombre.
Rendre la vie de votre projet publique sera bénéfique à l'ensemble de
votre communauté d'utilisateurs.

La publication d'une annonce est chose facile. Il suffit de cliquer sur
le lien "Annonces" dans la barre de service du projet puis sur le lien
"Soumettre une annonce" dans la barre de menu du service au sommet de la
page. Ensuite tapez le titre et le contenu de l'annonce. Les URLs
présents dans le message seront automatiquement transformés en hyperlien
dans la version publiée. Vous pouvez aussi choisir de rendre votre
annonce publique c'est à dire visible sur votre page de sommaire du
projet par tous les utilisateurs Tuleap ou privée c'est à
dire visible seulement par vos membres de projet.

N'importe quel utilisateur Tuleap peut attacher un
commentaire aux annonces visibles pour lui sur votre page de sommaire de
projet, ce qui signifie que chaque annonce est un forum de discussion en
puissance. De plus, l'équipe d'administration du site
Tuleap a une vue sur l'ensemble des annonces publiques
publiées par les différents projets et peut décider de faire apparaître
certaines d'entre elles sur la page d'accueil principale du site
Tuleap si elles présentent un intérêt pour l'ensemble des
utilisateurs. Une belle publicité en vérité !! Lors de la soumission
d'une annonce, vous pouvez d'ailleurs demander aux administrateurs que
votre annonce soit mise en avant sur la page d'accueil principale du
site.

Forums Web
-----------

Il s'agit là de la troisième forme de communication offert par
Tuleap. Les forums Web sont plus ou moins équivalents aux
listes de diffusion si ce n'est que l'envoi d'un message se fait via
l'interface Web plutôt que par e-mail. Vous devez donc être connecté au
site pour participer à la discussion car vous ne pouvez pas préparer vos
messages en étant déconnecté comme vous le feriez avec une liste de
diffusion.

Pour accéder aux forums Web d'un projet Tuleap, cliquez sur
le lien "Forums" dans la barre de service du projet. Lorsqu'un projet
Tuleap est créé il est pourvu de trois forums : Open
Discussions, Help and Developers. Ces forums et tous les autres sont
accessibles en lecture et en écriture à tous les utilisateurs
Tuleap à moins que vous ne décidiez de les rendre privés
(voir ci-dessous). Un utilisateur peut aussi surveiller un forum. Dans
ce cas Tuleap lui fera suivre automatiquement par e-mail
tous les messages postés sur le forum, ce qui lui évitera des visites
répétées à la page Web du forum.

Les administrateurs de projet peuvent créer d'autres forums à la demande
en utilisant le module d'administration des forums accessible via le
lien "Administration" situé dans la barre de menu du service Annonces.
Les administrateurs peuvent ensuite suivre les liens présents sur cette
page pour ajouter un forum, détruire un message ou mettre à jour les
infos et le statut du forum. Cette dernière fonctionnalité permet aux
administrateurs de rendre un forum public ou privé, de modifier son nom
ou sa description ou même de le détruire.
