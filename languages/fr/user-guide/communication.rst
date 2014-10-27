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
puissance [1]_. De plus, l'équipe d'administration du site
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

Plug-in de messagerie instantanée
----------------------------------

Tuleap est associé à un serveur Jabber et contient un
plug-in de messagerie instantanée (IM) permettant un niveau
d'interaction entre eux.

Si le plug-in est actif, un compte de messagerie instantanée sera
automatiquement disponible pour chaque utilisateur Tuleap,
et ceux-ci pourront se connecter sur le serveur Jabber en utilisant
leurs identifiants Tuleap. De plus, les utilisateurs membres
d'un même projet seront regroupés ensembles sur le serveur Jabber, qui
ajoutera automatiquement ce groupe dans la liste de contacts de chacun
des membres.

Pour chaque projet, le plug-in crée un salon de discussion
multi-utilisateurs (MUC) où les membres d'un projet peuvent discuter
ensemble. Seuls les membres d'un projet peuvent rejoindre le salon lui
correspondant, mais un membre présent dans un salon peut inviter des
utilisateurs externes au projet.

Le plug-in IM de Tuleap contient un client Jabber intégré à
l'interface web de votre projet. Ce client vous permet uniquement de
dialoguer dans le salon de discussion du projet (voir ?). Bien entendu,
chaque utilisateur est libre d'utiliser le client qui correspond le
mieux a ses besoins. Un certain nombre de client open source (et/ou
gratuit) sont disponibles pour la plupart des plateformes, une liste
non-exhaustive est disponible à l'url http://www.jabber.org/clients.
Notons toutefois que certains clients, comme Coccinella par exemple,
permettent de faire du tableau blanc partagé.

Le status d'un utilisateur utilisant un client Jabber (en ligne, occupé,
absent) est affiché dans Tuleap.

Intégration de la messagerie instantanée dans Tuleap
`````````````````````````````````````````````````````

Un certain nombre d'informations concernant la messagerie instantanée
sont disponibles directement depuis Tuleap. Ainsi, chaque
utilisateur peut voir sa liste de contact ainsi que leur status
directement depuis son espace personnel. Pour ce faire, il suffit de se
rendre sur la page "Ma Page Personnelle". Si le widget affichant la
liste de contact n'est pas visible, il faut l'ajouter. Pour ce faire,
cliquez sur le lien "Ajouter des widgets" , et ajouter le widget
correspondant à "Ma liste de contact IM".

Chaque nom d'utilisateur affiché dans Tuleap s'accompagne
d'une icone de couleur (gris,vert, jaune ou rouge) indiquant le status
de l'utilisateur : gris pour "non connecté", vert pour "en ligne", jaune
pour "absent" et rouge pour "occupé". Les utilisateurs peuvent modifier
leur status à l'aide de leur client Jabber.

Tout nouveau projet approuvé implique la création d'un groupe partagé et
d'un salon de discussion correspondant au projet.

Tout nouveau membre ajouté au projet est également ajouté au groupe
partagé et au salon de discussion correspondant. Ce nouveau membre sera
automatiquement invité à rejoindre le salon de discussion du projet dès
sa prochaine connection sur le serveur Jabber.

Si un membre est supprimé dans un projet alors il sera supprimé du
groupe partagé et du salon de discussions correspondant .

Si un projet est suspendu ou en attente de validation, le salon de
discussions sera rendue indisponible (vérouillé) et le groupe partagé ne
sera pas visible sur la liste de contacts des membres du projet.

Si un projet est détruit, son salon de discussions sera détruit et son
groupe partagé n'existera plus .

Configuration d'un client Jabber
`````````````````````````````````

La configuration d'un client Jabber pour utiliser votre compte
Tuleap est simple. Si vous utilisez un client qui accèpte
plusieurs protocoles de communication, la première chose à faire est de
choisir le protocole Jabber (ou XMPP). Trois autres informations sont
nécessaires pour vous connecter : votre nom d'utilisateur, votre mot de
passe et l'adresse du serveur Jabber auquel vous allez vous connecter.
Certains clients Jabber utilisent le terme de JID (ou Jabber ID) qui
fait simplement référence au nom d'utilisateur associé à l'adresse du
serveur par un symbole @ (i.e. nomd'utilisateur@serveurJabber.com),
d'autres demandent explicitement le nom et l'adresse du serveur. Votre
JID est disponible dans votre espace personnel sur le site web
Tuleap en vous authentifiant, et en cliquant sur le lien
"Mon compte" sur la page "Ma page personnelle", ou tout simplement en
accedant à votre "Profil développeur". Vous pourrez ainsi trouver votre
"Login Messagerie Instantanée" qui est composé de votre nom
d'utilisateur et de l'adresse du serveur Jabber associé à
Tuleap. Utilisez le même mot de passe pour vous authentifier
sur le serveur Jabber que pour vous connecter à Tuleap.

En plus de ces paramètres, le client peut vous demander le nom de la
ressource que vous utilisez pour vous connecter sur votre compte Jabber.
Ceci peut être pratique si vous vous connectez au même compte Jabber
depuis différents matériels. Par exemple, un message peut vous être
adressé à vous@serveur.com/pda à la place de vous@serveur.com/bureau
(dans ce cas, "pda" et "bureau" sont les ressources).Vous pouvez remplir
ce champ avec une chaine alpha numérique.

Pour finir, le client a besoin de connaitre le numéro de port que le
serveur Jabber écoute. Par defaut, cette valeur est le 5222, et la
plupart des clients Jabber l'utilise par defaut.

D'autres paramètres "avancés" peuvent être configurés, mais ce n'est pas
l'objet de ce guide de détailler l'utilisation d'un client Jabber. Pour
plus d'informations, consultez la documentation fournie avec votre
client.

Salon de discussion multi-utilisateurs (MUC)
`````````````````````````````````````````````

Comme il a été spécifié précédement,le plug-in de messagerie instantanée
crée un salon de discussion multi-utilisateurs pour chaque projet. Ce
salon porte le nom du projet, et n'est accessible qu'aux membres du
projet.

Vous pouvez accéder au salon de discussion directement dans l'interface
web de votre projet, ou grâce à un client de messagerie instantanée.

Salon de discussion dans l'interface web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Pour entrer dans le salon de discussion de votre projet, il vous suffit
de cliquer sur l'onglet 'Messagerie Instantanée' de votre projet. Vous
serez alors automatiquement connecté à la messagerie instantanée, et
pourrez commencer à discuter avec les membres de votre projet également
connectés.

L'interface du salon de discussion se compose de plusieurs zones :

-  La fenêtre principale vous permet de visualiser les messages des
   différents participants à la discussion. Les noms des utilisateurs
   apparaissent devant les messages, pour pouvoir mieux suivre la
   discussion. Les messages systèmes (qui entre dans la salle de
   discussion, qui en sort, etc) sont affichés en gras.

   Les messages sont affichés sans formatage particulier. Il est
   cependant possible d'en appliquer certains (voir pour cela la section
   ?). Les URL sont cliquables (s'ouvrent dans une autre fenêtre). Les
   références de votre projet son également cliquables (exemple, si vous
   écrivez le message bug #23 dans la fenêtre de discussion, le mot 'bug
   #23' sera cliquable et vous redirigera vers le bug 23 de votre
   projet. Le système ne vérifie pas a priori si le bug 23 existe dans
   votre projet. Il est possible de faire des références vers un autre
   projet, mais uniquement avec la forme mot clé #numéro du
   projet:numéro de l'item. La forme avec le nom court du projet n'est
   pas reconnue par la messagerie instantanée. Pour plus d'explications
   sur les références croisées, voir la ?.

-  Juste en dessous de la fenêtre principale, se trouve la zone
   d'écriture du message. Pour envoyer un message à tous les membres du
   salon de discussion, cliquez sur cette zone, entrez votre messages,
   puis appuyez au choix sur le bouton 'Envoyer' ou sur la touche Entrée
   de votre clavier. Le message apparaîtra à la suite des autres
   messages, précédé par votre nom.

-  La zone à droite de la fenêtre principale correspond à la liste des
   utilisateurs connectés au salon de discussion. Cette liste est
   actualisée en temps réel.

   Il existe une notion de message privé. Si vous souhaitez envoyer un
   message à un utilisateur particulier sans que votre message soit vu
   par tout le salon de discussion, vous pouvez cliquer sur le nom de
   l'utilisateur en question, puis taper votre message (le nom de
   l'utilisateur apparaît dans la zone d'écriture du message, indiquant
   qu'il sera le seul à le recevoir). Pour revenir à l'état normal
   (discussion avec tout le monde), il vous suffit de cliquer sur le nom
   de la personne dans la zone d'écriture, ce qui aura pour effet de
   faire disparaître son nom.

-  Au dessus de la fenêtre principale, le nom du salon de discussion est
   inscrit (il s'agit du nom du projet). En dessous, se trouve le sujet
   du salon de discussion. Ce sujet est modifiable en tapant une
   commande spéciale dans la zone de message :

   ::

       /topic Le nouveau sujet du salon de discussion
                           

-  Sous la zone d'écriture, se trouve une dernière zone correspondant à
   votre statut de messagerie Instantanée. Il s'agit d'un état indiquant
   aux autres si vous êtes disponibles pour dialoguer, ou si vous êtes
   occupés et ne souhaitez pas être dérangé, etc. Vous pouvez également
   rajouter un texte libre, comme votre humeur du jour, ou toute autre
   chose.

   A droite, vous pouvez également voir un bouton vous permettant de
   couper ou d'activer le son. Pour disposer du son, vous devez avoir un
   plugin Flash pour votre navigateur.

|Salon de discussion dans l'interface web de Tuleap|

    **Tip**

    Lorsque vous tapez du texte dans la fenêtre de messagerie
    instantanée, le client interprète un certain nombre de commandes
    pour mettre le texte en forme. Ces commandes peuvent être
    interprétées différemment selon votre client, mais fonctionnent sur
    la plupart d'entres eux.

    -  **Ecrire en gras :** vous devez entourer votre texte avec une
       étoile.

       Exemple : je vous contacterai par téléphone \*demain à 14h00\*

    -  **Souligner :** vous devez entourer votre texte avec un tiret
       bas.

       Exemple : je vous contacterai par téléphone \_demain à 14h00\_

    -  **Faire un lien (URL) :** le système détectera les URL si elles
       commencent par http://

       Exemple : Vous pouvez aller voir sur http://tuleap.net

    -  **Faire une référence vers un objet de votre projet :** Vous
       pouvez référencer un objet de votre projet (artefact, bug,
       document, page wiki, etc.). Pour cela, écrivez simplement la
       référence vers l'objet en respectant la syntaxe habituelle motclé
       #numérod'objet

       Exemple : Vous pouvez aller voir le document doc #185 pour plus
       de détails.

    -  **Changer le sujet d'un salon de discussion :** vous devez écrire
       /topic suivi du nom du salon.

       Exemple : /topic Réunion Mensuelle

    -  **Changer de pseudo :** vous pouvez changer votre pseudonyme pour
       la durée de la session. Les autres utilisateurs vous verrons
       alors sous ce nouveau nom. Même si cette fonctionnalité peut
       paraître amusante, rappelez vous toujours que changer fréquemment
       de pseudo peut nuire à la qualité de la discussion (difficile de
       suivre qui dit quoi si tout le monde change de pseudo).
       N'utilisez cette fonction que pour apporter plus de clarté (si
       deux utilisateurs ont des noms assez proches par exemple).
       Veuillez noter que dans les archives de discussions, en cas de
       changement de pseudonyme, les messages indiqueront toujours le
       'vrai' utilisateur, c'est à dire le nom d'utilisateur d'origine.
       La commande pour changer de pseudo est /nick suivi de votre
       nouveau pseudo.

       Exemple : /nick Manu - maison

    -  **Les smileys (ou émoticons) :** vous pouvez utiliser des
       smileys. Le client de l'interface web ne dispose pas d'une
       interface pour insérer des smileys. Pour pouvez néanmoins en
       ajouter sous forme textuelle. Elle apparaîtront sous forme
       d'image dans les différents clients (y compris le client web).
       Chaque client implémente différemment les émoticons, mais en
       général, les plus courants devraient fonctionner.

       Exemple : le texte :-) affichera un beau sourire !

Joindre un salon de discussion avec un client
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Vous devez paramètrer votre client Jabber avec l'adresse du serveur de
conférence pour qu'il sache où récupérer les informations concernant les
salons de discussion. Cette adresse est simplement
conference.serveurJabber.com, c'est à dire le mot "conference", un ".",
et l'adresse du serveur Jabber. A partir de là vous avez accès à la
liste des salons, et vous pouvez vous connectez à ceux correspondant à
vos projets.

Chaque client Jabber a sa propre manière de gérer les salons de
discussion, il est possible que l'étape décrite précédement soit
différentes en fonction des clients. En cas de besoin, consultez la
documentation concernant votre client Jabber à propos des salons de
discussion (MUC).

Une fois connecté au salon, vous pouvez inviter des utilisateurs
non-membres du projet à le rejoindre. Une fois qu'un utilisateur a
accepté une invitation, il devient membre du salon de discussion.

Pour plus d'informations sur l'invitation d'utilisateurs extérieurs dans
un salon de discussion, consultez la documentation de votre client
Jabber.

Archives des conversations
```````````````````````````

Les conversations des salons de discussions sont archivées par le
système (les conversations privées ne sont pas archivées). Pour accéder
aux archives, cliquez sur le lien Archives de l'onglet Messagerie
Instantanée de votre projet. Tout membre du projet a accès aux archives
du projet.

Par défaut, les archives des conversations des 7 derniers jours sont
affichées. Vous pouvez bien sûr changer la période de recherche grâce au
calendrier. Si vous ne souhaitez rien précisez, laissez la zone vide.
Vide pour date de début signifie "depuis le début", vide pour la date de
fin signifie "jusqu'à maintenant".

Les archives des conversations sont classées par jour. Elles vous
renseignent sur l'heure des messages (heure et minutes), l'auteur du
message (identifiant de l'utilisateur sur le serveur
Tuleap), et bien sûr le message lui-même. Les changements de
peudos ne sont pas consignés dans les archives. Les messages systèmes
sont présents, ce qui aide à savoir qui était présent lorsque telle
chose a été dite. Les URL et les références apparaîtront comme des
liens, mais les commandes spéciales (voir ?) ne sont pas interprétées.

Notez également que les conversations sont séparées par un léger trait
horizontal lorsque qu'il n'y a pas eu d'activité pendant au moins 10
minutes.

Vous pouvez exporter les archives, au format CSV, en cliquant sur le
bouton exporter en bas de page des archives. L'export tiendra compte de
vos préférences utilisateurs concernant le séparateur CSV et le format
de date (voir ?).

.. [1]
   En arrière plan, chaque annonce est en fait gérée exactement comme un
   forum Web Tuleap.

.. |Salon de discussion dans l'interface web de Tuleap| image:: ../../screenshots/fr_FR/sc_webmucrooms.png
