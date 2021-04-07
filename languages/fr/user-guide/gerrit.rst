Gerrit
======

.. warning:: La traduction de cette page est incomplète et non maintenue. Veuillez vous rendre sur http://doc-en.tuleap.net/en/latest/user-guide/gerrit.html



L'intégration avec Gerrit est encore récente; une bonne connaissance de Gerrit et de Tuleap sont donc requis.

Gerrit est un outil de review de code qui se base sur git. Il a aussi la capacité de gérer les permissions d’accès aux dépôts.

Plus d'informations sur Gerrit : http://code.google.com/p/gerrit/

Feature overview
----------------

L'intégration de Gerrit avec Tuleap a été faite aussi légèrement que possible  afin de donner la possibilité aux utilisateurs s’utiliser Gerrit a son plein potentiel.
Tuleap simplifie la création et la gestion des dépôts, des utilisateurs et des groupes d’utilisateurs.
Tuleap ne limite en rien les capacités de Gerrit.

On peut connecter plusieurs serveurs Gerrit à une même instance de Tuleap et vice-versa. Un serveur Gerrit peut aussi être utilisé seul, sans Tuleap, en toute autonomie pour gérer les projets et utilisateurs. 

Migration d'un dépôt git vers Gerrit
------------------------------------

En tant qu'administrateur d'un projet, on peut migrer un dépôt git vers Gerrit.

Après la migration, tous les fichiers du dépôt migré seront répliqués sur le serveur Gerrit avec des permissions par défaut générés à partir des permissions sur Tuleap.

Du coté Tuleap, dès que le dépôt est migré, la version Tuleap n'as plus que les droits de lecture ; la référence étant sur Gerrit.

Les utilisateurs peuvent continuer à visualiser le dépôt et son contenu, en faire un forks ou un clone ; toutes les opérations d'écriture sont suspendues (même pour les admins).

En revanche, toutes les changements effectués sur le dépôt git migré sur Gerrit sont répliqués sur Tuleap. Quand un développeur fait un commit sur Gerrit, quelques secondes plus tard, ce même commit est répliqué sur le dépôt Tuleap.

Un effet secondaire de la migration est que tous les groupes d'utilisateurs d'un projet sont répliqués sur Gerrit. Voir ci-dessous.

Création de projet
``````````````````

Dans la terminologie Gerrit, un dépôt git s'appelle un "project". Afin d'eviter toute confusion, nous l’appellerons un "Gerrit project".


In following sections, we will take the example of an imaginary Tuleap project "mozilla" with two git repositories "thunderbird" and "firefox".

Project admins migrate to Gerrit "firefox" git repository. After a couple of minutes, on Gerrit side there is:

* One top level Gerrit project "mozilla"
* One sub project "mozilla/firefox" created

The Gerrit project "mozilla/firefox" contains sources and is where developer will push for review.

The Gerrit project "mozilla" is a permission only project (no sources can be pushed into) and is meant to group all git repositories that come
from the same Tuleap project. It's convenient to define common permissions for several repositories.


Permissions
```````````

Tuleap comes with a default set of permissions for each Gerrit project. Those permissions are set at project migration only.
No subsequent modifications of permissions are done by Tuleap.

Default Gerrit access rights are based permissions set on corresponding Tuleap git repository at migration.
For details on on gerrit access rights please have a look to http://gerrit-documentation.googlecode.com/svn/Documentation/2.5.2/access-control.html

* Read:

  * On 'heads'

    * Read
    * label code-review -1..+1

  * On 'for/refs/heads'

    * Push

  * On 'tags'

    * Read
* Write:

  * On 'heads'

    * Read
    * Create
    * forgeAuthor
    * label code-Review -2..+2
    * label verified -1..+1
    * submit
    * push
    * pushMerge

  * On 'for/refs/heads'

    * Push
    * PushMerge

  * On tags

    * Read
    * pushTags

* Rewind:

  * On 'heads'

    * Push +force

As project administrator, you can redefine the whole Gerrit permission scheme as you wish. If you need to create new user groups to tailor
your workflow, see "User groups management" section below.

User groups management
----------------------

User group management helps to keep consistent your teams between Tuleap and Gerrit.
When someone join or leave your team, just add or remove it in Tuleap project and it's automatically propagated to Gerrit.

The user group management follow the same naming pattern than projects.
Given I have a "mozilla" Tuleap project with one special user group "Developers", I will get on Gerrit server:

* mozilla/project_members
* mozilla/project_admins
* mozilla/Developers

The two first user groups are created by default out of "Members" and "Admins" list.

As soon as one git repository was migrated to Gerrit. All modifications done to Tuleap project membership is replicated:

* When I create a new Tuleap user group, a new Gerrit user group is created
* When I add users as members of a user group on Tuleap, they became members of the corresponding user group on Gerrit
* When I remove members on Tuleap, they are removed from corresponding Gerrit group
* When I create a binding between two user groups in Tuleap, the two groups are linked in gerrit (even if the user group, source of the binding doesn't exist on Gerrit yet).
* When I remove a binding between two user groups in Tuleap, the source group is no longer included in the target group and all members of the source group are added into the target group.

Manage user SSH keys
--------------------

To help people to start working with Gerrit, user ssh keys stored in Tuleap can be imported on Gerrit server.

As soon as a user belongs to a Tuleap project with at least one git repository migrated to Gerrit, all modifications
done to user ssh keyring are propagated to the corresponding user account on the server.
In other words, when user add an ssh key on Tuleap, the ssh key is added on Gerrit server and vice et versa.

This key management doesn't override Gerrit ssh keys, it will not delete keys Tuleap doesn't manage.

Note: the first connexion between Tuleap user account and Gerrit user account is not done automatically. Each user have to
go on Tuleap "Account Maintenance" page and click "Push SSH keys" button. All future operations are automated.

Setup
-----

Integration only works with 2.5.x version of gerrit.

Prerequisites:

* LDAP plugin must be installed, configured and active. Both Tuleap and Gerrit rely on LDAP for common user management.

From now on, you will need:

================================ ======================================================
  What                              Value
================================ ======================================================
a tuleap instance                my.tuleap.server.net
a gerrit instance                gerrit.instance.com
your local workstation           workstation
the gerrit general administrator admin-my.tuleap.server.net (must be a valid LDAP user)
the gerrit super administrator   gerrit-adm (must be a valid LDAP user)
================================ ======================================================

Install and configure Gerrit server
```````````````````````````````````

Follow the steps here up until and including the section `Initialize the Site <http://gerrit-documentation.googlecode.com/svn/Documentation/2.5.2/install-quick.html>`_

Configure LDAP integration
""""""""""""""""""""""""""

To connect as ``gerrit-adm``, you first need to configure gerrit to authenticate with LDAP.

* Edit ``etc/gerrit.config`` to use `LDAP auth <http://gerrit.googlecode.com/svn/documentation/2.5.2/config-gerrit.html#ldap>`_. Example:

  .. code-block:: ini

    [auth]
        type = LDAP
    [ldap]
        server = ldap://myldap.server.com
        accountBase = ou=People,dc=cro,dc=enalean,dc=com
        groupBase = ou=Group,dc=cro,dc=enalean,dc=com
        accountFullName = cn

* Restart or stop/start your gerrit as explained in the gerrit quick_install documentation.

Create the gerrit administrator account
"""""""""""""""""""""""""""""""""""""""

* Start the gerrit instance, go to the web ui and create the administrator account (the first account registered is the administrator) for ``gerrit-adm``.

* Through the gerrit web ui, go to the settings and upload your very own local ssh key.

  .. code-block:: bash

    # copy the output of this and paste it in gerrit
    you@workstation$ cat $HOME/.ssh/id_rsa.pub

* This gives you ultimate rights over ``gerrit.instance.com`` as a super administrator. It's bad practice to use this account for anything but major changes so we will add a general administrator account for taking care of the day to day administration of ``gerrit.instance.com``.


Configure gerrit replication
""""""""""""""""""""""""""""

To configure gerrit replication we need to use the gerrit replication plugin. This plugin comes as part of the gerrit package gerrit-full-2.5.1.war that you have downloaded. There are two steps to using this package. Let's assume you have already followed the steps in the link above and have a folder called _gerrit_testsite_ where all the gerrit files are located.

* First login as ``admin-my.tuleap.server.net`` on ``gerrit.instance.com`` and create the group ``my.tuleap.server.net-replication``. Do not add any users to it. Make group visible to all registered users:

  * Go to ``Groups > Create New Group``
  * Create ``my.tuleap.server.net-replication``
  * Then go to ``Groups > List > my.tuleap.server.net-replication > General`` 
  * Tick the Group option ``Make group visible to all registered users`` 
  * and save

* Now go back to the gerrit package you downloaded. You inflate the jar of the replication plugin into ``gerrit_testsite/plugins/``.

  .. code-block:: bash

    gerrit@gerrit.instance.com$ unzip -j gerrit-full-2.5.2.war WEB-INF/plugins/replication.jar -d gerrit_testsite/plugins/

* Finally, you need to configure the plugin. Go to ``gerrit_testsite/etc/`` and create a file called ``replication.config``:

  .. code-block:: bash
  
    gerrit@gerrit.instance.com$ cd gerrit_testsite/etc
    gerrit@gerrit.instance.com$ touch replication.config
  

* In this file put the following contents

  .. code-block:: ini

    [remote "my.tuleap.server.net"]
      url = gitolite@my.tuleap.server.net:${name}.git
      push = +refs/heads/*:refs/heads/*
      push = +refs/tags/*:refs/tags/*
      authGroup = my.tuleap.server.net-replication

Connect Gerrit and Tuleap servers
`````````````````````````````````

Setup administrator account for Tuleap
""""""""""""""""""""""""""""""""""""""

* As codendiadm on Tuleap server generate a new SSH key for gerrit:

  .. code-block:: bash

    codendiadm@my.tuleap.server.net$ ssh-keygen -P "" -f /home/codendiadm/.ssh/id_rsa-gerrit

* On Gerrit server log-in with the LDAP credentials for ``admin-my.tuleap.server.net`` and give it the SSH public key you just created (``/home/codendiadm/.ssh/id_rsa-gerrit.pub``)

* On Gerrit server, log back in as ``gerrit-adm`` and give ``admin-my.tuleap.server.net`` Administrator rights: In the interface, go to ``Groups > List > Administrators`` then add ``admin-my.tuleap.server.net`` in the input box and click on ``Add``.

Grant write accesses to administrators
""""""""""""""""""""""""""""""""""""""

On Gerrit server, as Administrator, go to Projects > List > All-projects > Access.

* Look for the reference refs/meta/config

  * Add ``Read`` permission to Groups ``Administrators``

* Add a new reference refs/meta/*

  * Grant ``Read`` and ``Push`` permission to ``Administrators``
    `This is necessary <https://groups.google.com/d/topic/repo-discuss/yJDNZJmmAUI/discussion>`_ to allow Tuleap to update the ``project.config`` of any project

* Look for the reference /refs/*

  * Add ``Forge Committer Identity`` permission for the group ``Administrators`` (this will allow Tuleap to push commits it's not the direct author of).

Configure the email of the administrator
""""""""""""""""""""""""""""""""""""""""

First, shell into the box on which Tuleap is running as either ``codendiadm``. From there, you will need to run this:

  .. code-block:: bash

    codendiadm@my.tuleap.server.net$ ssh -i /home/codendiadm/.ssh/id_rsa-gerrit admin-my.tuleap.server.net@gerrit.instance.com -p 29418 gerrit gsql
    UPDATE account_external_ids SET email_address = 'codendiadm@my.tuleap.server.net' WHERE external_id LIKE '%:admin-my.tuleap.server.net';
    UPDATE accounts SET preferred_email = 'codendiadm@my.tuleap.server.net' WHERE full_name = 'admin-my.tuleap.server.net';
    exit;
    codendiadm@my.tuleap.server.net$ ssh -i /home/codendiadm/.ssh/id_rsa-gerrit admin-my.tuleap.server.net@gerrit.instance.com -p 29418 gerrit flush-caches


*Note:* This step cannot be done through the web ui since the email is hard coded to ``codendiadm@my.tuleap.server.net`` which by default has no mbox and a confirmation email is sent to this address.

Integrating Tuleap and Gerrit
`````````````````````````````

* Shell into the box on which your Gerrit instance is running and grab the output of the default public key that will be used for the replication:

  .. code-block:: bash

    gerrit@gerrit.instance.com$ cat ~/.ssh/id_rsa.pub

If it doesn't exist then you need to create it via ``ssh-keygen`` as above.

* As site admin on Tuleap, go to ``Admin > plugins > git plugin`` and add a gerrit server:

===================== ==============================================
 Key                   Value
===================== ==============================================
  Host                ``gerrit.instance.com``
  Port                ``29418``
  Login               ``admin-my.tuleap.server.net``
  Identity File       ``/home/codendiadm/.ssh/id_rsa-gerrit``
  Replication SSH Key copy and paste the output of the public key
===================== ==============================================

* Finally, it is important for the codendiadm user on ``my.tuleap.server.net`` to have ``gerrit.instance.com`` as part of its known hosts and vice versa. To ensure this:

  .. code-block:: bash

    # root on Tuleap
    root@my.tuleap.server.net$ ssh -p 29418 -i /home/codendiadm/.ssh/id_rsa-gerrit admin-my.tuleap.server.net@gerrit.instance.com gerrit -h

    # codendiadm on Tuleap
    codendiadm@my.tuleap.server.net$ ssh -p 29418 -i /home/codendiadm/.ssh/id_rsa-gerrit admin-my.tuleap.server.net@gerrit.instance.com gerrit -h

    # Gerrit user on Gerrt server (replication)
    gerrit@gerrit.instance.com$ ssh gitolite@my.tuleap.server.net

Activation de la suppression d'un Gerrit project via Tuleap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
[Ce plugin est originaire de  https://gerrit.googlesource.com/plugins/delete-project]

Depuis Tuleap 6.5, il est possible de supprimer un Gerrit project après que celui-ci ait été déconnecté de Tuleap.
Pour que cette fonctionnalité soit proposée il faut installer un plugin supplémentaire.

* Télécharger le plugin https://tuleap.net/file/download.php/101/65/p5_r58/deleteproject.jar

* Pour installer le plugin, vous avez deux options.

  * option 1 – Copier le plugin dans le dossier de 'plugins' sur votre instance Gerrit instance puis exécuter

  .. code-block:: bash

    ssh -p29418 admin-my.tuleap.server.net@gerrit.instance.example.com gerrit plugin enable deleteproject

  * option 2 – Mettre le plugin quelquepart d'accessible puis exécuter

  .. code-block:: bash

    ssh -p29418 admin-my.tuleap.server.net@gerrit.instance.example.com gerrit plugin install <url du plugin>
