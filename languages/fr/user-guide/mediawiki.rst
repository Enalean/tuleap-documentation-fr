

.. _mediawiki:

Mediawiki
=========

Vue d'ensemble
--------------

Ce chapitre n'est pas un tutoriel Mediawiki. Il se concentre sur l'intégration de Mediawiki
dans Tuleap. Si vous n'êtes pas familier avec Mediawiki, nous vous recommandons de lire la documentation
proposée dans la partie référence (see `Références pour Mediawiki`_).

Mediawiki est proposé dans sa version 1.20 avec Tuleap. Actuellement, ce Mediawiki n'est déployé avec aucun
module complémentaire.

Il y'a une instance de Mediawiki par projet dans Tuleap. Tuleap gère la connexion des utilisateurs dans Mediawiki.
Un utilisateur de Tuleap a accès à Mediawiki dans l'ensemble des projets auxquels il peut accéder
(et qui ont activé le service Mediawiki). Par conséquent, vous n'avez pas à vous enregistrer sur Mediawiki.

Les utilisateurs dits "restreints" auront accès à Mediawiki dans l'ensemble des projets où ils sont membres.
S'ils ne le sont pas, ils ne seront pas autorisés à accéder à Mediawiki, que ça soit dans les projets privés
et publics.

Gestion des permissions
------------------------

Correspondance entre les goupes Tuleap et Mediawiki
```````````````````````````````````````````````````

Il existe une correspondance entre les groupes d'utilisateurs Tuleap et Mediawiki.

Un utilisateur ajouté dans un groupe Tuleap sera intégré automatiquement dans le groupe
Mediawiki correspondant. Par exemple, en ajoutant un utilisateur dans votre projet, il sera automatiquement
ajouté dans les goupes utilisateurs, email confirmé et utilisateurs enregistrés. Ceci est totalement
transparent pour les utilisateurs et les administrateurs de projet.

Il n'est dorénavant plus possible d'ajouter un utilisateur
directement dans un groupe Mediawiki.

Actuellement, il n'existe pas de moyen pour créer une correspondance personnalisée entre les groupes.
La correspondance définie par Tuleap est la suivante : 

.. figure:: ../images/screenshots/mediawiki_mapping.png
   	   :align: center
  	   :alt: Mediawiki correspondance entre groupes
  	   :name: Mediawiki correspondance entre groupes

Synchronisation des utilisateurs et de groupes pour Mediawiki
`````````````````````````````````````````````````````````````

Dans le but d'avoir des utilisateurs et des groupes dans Mediawiki les plus pertinents possibles,
une synchronisation est lancée lorsque les actions suivantes se produisent :

-  Un utilisateur Tuleap n'est plus membre de projet

-  Un utilisateur Tuleap n'est plus administrateur de projet

-  Un utilisateur Tuleap est renommé


Extensions Mediawiki
--------------------

Tuleap intègre actuellement les extensions Mediawiki suivantes :

* `CategoryTree <https://www.mediawiki.org/wiki/Extension:CategoryTree>`_ : cette extension parcourt dynamiquement la
  structure des catégories. Pour plus d'informations à ce sujet, veuillez vous reporter au mediawiki du projet, cliquez
  sur **Pages spéciales**, puis sur **Version** pour accéder à la liste des extensions installées. Un lien hypertexte
  vous permettra d'accéder à des informations détaillées sur CategoryTree.
 
* `Cite <https://www.mediawiki.org/wiki/Extension:Cite/Cite.php>`_ : cette extension ajoute les balises ``<ref[name="id"]>`` et ``<references/>`` pour les références et les notes de bas de page.

* `ImageMap <https://www.mediawiki.org/wiki/Extension:ImageMap>`_ : cette extension permet d'utiliser des images cliquables côté client, grâce à la balise ``<imagemap>``.

* `InputBox <https://www.mediawiki.org/wiki/Extension:InputBox>`_ : cette extension permet l'inclusion de formulaires HTML prédéfinis.

* `LabeledSectionTransclusion <https://www.mediawiki.org/wiki/Extension:Labeled_Section_Transclusion>`_ : cette extension ajoute les fonctions ``#lst`` et ``#lstx`` ainis que la balise ``<section>``, et elle active les sections marquées dans le texte qui doivent être transcluses.

* `ParserFunctions <https://www.mediawiki.org/wiki/Extension:ParserFunctions>`_ : cette extension améliore l'analyseur de wiki avec des fonctions principalement liées à la logique et à la manipulation de chaîne de caractères.

* `PdfBook <http://www.mediawiki.org/wiki/Extension:PdfBook>`_ : cette extension permet de composer un livre à partir d'articles d'une catégorie et de l'exporter au format PDF.

* `SyntaxHighlight_GeSHi <https://www.mediawiki.org/wiki/Extension:SyntaxHighlight_GeSHi>`_ : cette extension permet d'afficher du code source formaté grâce à la balise ``<syntaxhighlight>`` et au support du `système GeSHi de mise en évidence de la syntaxe <http://qbnz.com/highlighter/>`_.

* **TuleapArtLinks** : grâce à cette extension, depuis Tuleap 7.10, MediaWiki reconnaît les références croisées telles que **art #12345** et les convertit automatiquement en liens hyper-texte qui pointent sur l'artifact correspondant dans Tuleap. 

* `WikiEditor <http://www.mediawiki.org/wiki/Extension:WikiEditor>`_ : cette extension offre un éditeur de texte. Elle est seulement disponible avec l'affichage en mode compatibilité (voir ci-dessous).

Affichage en mode compatibilité
-------------------------------

Afin de permettre l'utilisation des plugins mediawiki qui produisent des conflits d'affichage au sein de Tuleap, il y a une option de passer en mode compatibilité. Si choisie et si les administrateurs de la forge l'ont activée, cette option passe l'affichage du mediawiki du projet en mode "par défaut". Néanmoins, on reste toujours au sein de son projet et des liens pour y revenir se trouvent sur la barre de gauche.

Afficher le logo de votre projet dans Mediawiki
-----------------------------------------------
Les conditions suivantes sont requises afin d'afficher votre logo dans Mediawiki :

- Le fichier du logo doit être nommé `` .wgLogo.png`` exactement (notez le point au début).
- Le logo doit être placé dans le répertoire ``/var/lib/tuleap/mediawiki/projects/<project-id>/images/``. Demandez aux administrateurs de la forge de le téléverser à cet emplacement pour vous.
- Sa hauteur et sa largeur *devraient* être de 155px par 155px mais il peut être plus petit ou plus grand, étant donné qu'il sera dans tous les cas adapté à ces dimensions.

Références pour Mediawiki
-------------------------

-  Documentation officielle de Mediawiki : http://www.mediawiki.org/wiki/Documentation/fr

-  Mediawiki, droits d'accès par défaut : http://www.mediawiki.org/wiki/Manual:User_rights/fr

Contributions
-------------

- **CategoryTree** est une contribution de Daniel Kinzler.
- **Cite** est une contribution de Ævar Arnfjörð Bjarmason.
- **ImageMap** est une contribution de Tim Starling.
- **InputBox** est une contribution de Erik Moeller, Leonardo Pimenta, Rob Church, Trevor Parscal et DaSch.
- **LabeledSectionTransclusion** est une contribution de Steve Sanbeg.
- **ParserFunctions** est une contribution de Tim Starling, Robert Rohde, Ross McClure et Juraj Simlovic.
- **PdfBook** est une contribution de `Aran Dunkley <http://www.organicdesign.co.nz/nad>`_.
- **SyntaxHighlight_GeSHi** est une contribution de Brion Vibber, Tim Starling, Rob Church et Niklas Laxström.
- **TuleapArtLinks** est une contribution de `Enalean SAS <https://www.enalean.com/>`_.
