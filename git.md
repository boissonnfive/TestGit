# git / github.com


## Création du premier projet

1. On commence par créer un dépôt vide sur github.com (Ex: Projet1).
2. GitHub nous donne l'addresse du dépôt. Exemple :

        https://github.com/boissonnfive/Projet1.git

3. On revient en local sur son ordinateur.
4. On se place dans le dossier de son projet.
5. On lance git dans un terminal dans ce dossier.
6. On tape la commande :

        $ git init

7. On ajoute tous les fichiers/dossiers du projet en tapant (pour chaque fichier) :

        $ git add fichier

    Ou (pour tous les fichiers d'un coup) :

        $ git add *

8. On fait un commit :

        $ git commit -m "Première consigne"

9. On définit l'adresse du serveur de dépôt (avec l'adresse du 2):

        $ git remote add origin https://github.com/boissonnfive/Projet1.git

10. On remonte les modifications sur le dépôt en tapant :

        $ git push -u origin master

11. À la prochaine modification en local sur un fichier, on tapera :

        $ git add *
        $ git commit -m "ce qu on vient de modifier"

12. Et on exportera les modifications sur le dépôt distant en tapant :

        $ git push -u origin master

13. Si on veut supprimer le dernier commit (avant d'avoir fait un push) :
[ATTENTION : Les modifications du dernier commit sont supprimées du fichier!]
(Dans le log, le dernier commit n'apparaît plus)

        $ git reset --hard HEAD~1

14. A tout moment, on peut savoir où on en est par la commande :

        $ git status

15. A tout moment, on peut savoir tout ce qui a été fait par la commande :

        $ git log

16. Si on a travaillé à partir d'un autre ordinateur et que l'on veut récupérer les modifications :

        $ git pull



## Configurer git ##

    $ git config --global user.name "boissonnfive"
    $ git config --global user.email boissonnfive@gmail.com
    $ git config --list
    ...
    user.name=boissonnfive
    user.email=boissonnfive@gmail.com
    ...


### Erreur 403 lors d'un push ###

    git push origin master
    remote: Permission to boissonnfive/Mon_GIT.git denied to expansia.
    fatal: unable to access 'https://github.com/boissonnfive/Mon_GIT.git/': The requested URL returned error: 403

Il faut modifier le fichier ./git/config :

    …
    [remote "origin"]
    url = https://github.com/boissonnfive/Mon_GIT.git
    …

devient :

    …
    [remote "origin"]
    url = https://boissonnfive@github.com/boissonnfive/Mon_GIT.git
    …


## Gérer les branches

    $ git checkout -b 'essai'
    $ git add .
    $ git commit -m "Message"
    $ git checkout master
    $ git merge essai
    $ git branch -d essai



## Poser une étiquette (tag) ##

Donne la liste des étiquettes déposées sur le projet:

    $ git tag

ou

    $ git tag --list

Pose une étiquette sur le projet:

    $ git tag -a 'v0.0.1' -m 'première version du logiciel'

ou

    $ git tag v0.0.1

Pose l'étiquette sur le dépôt partagé:

    $ git push origin v0.0.1.0

ou

    $ git push origin --tags

Et enfin, rapatrie la dernière consigne sur le dépôt :

    $ git push origin master


## Liens sur git ##

- [git the simple guide](http://rogerdudler.github.io/git-guide/)
- [Étiquetage](https://git-scm.com/book/fr/v1/Les-bases-de-Git-Étiquetage)



## github.com

### Hello World github

<https://guides.github.com/activities/hello-world/>

### Supprimer un dépôt sur GitHub ###

<https://github.com/YOUR-USERNAME/YOUR-REPOSITORY/settings>

1. Aller dans le dépôt à supprimer
2. Aller dans le menu settings (roue dentée)
3. Sous la bannière « Danger Zone », cliquer sur « Delete this repository »
4. Lire les avertissements
5. Pour vérifier que vous effacer le bon dépôt, tapez le nom du dépôt que vous voulez supprimer
6. Cliquer sur « Je comprends les conséquences, effacez ce dépôt »


### Compte boisonnfive

- identifiant  : boissonnfive
- mail         : boissonnfive@gmail.com

### Compte expansia

- identifiant  : expansia
- mail         : stagiaire_etn.ara@pcas.com

### Compte binfoservice

- identifiant  : binfoservice
- mail         : binfoservice@gmail.com

---

## Git sur Windows

## Configuration ##

- version : 2.5.3
- architecture : 32 bits
- "Use git from Git Bash only"
- "Check-out Windows style, commit Unix-style line endings"
- "Use MinTTY (the default terminal of MSys2)"
- "Disable file system caching"

## Notes ##

Puisque Git Bash fonctionne à partir de MSys2, il inclut :

- Une documentation : C:\Program Files\Git\mingw32\share\doc\git-doc\index.html
- Bash
- Perl 5.0
- Vim 7.4

---

## Git par Marc

### Pourquoi Git ? ###

- Tracer par fonctionnalité plutôt que par fichier (commit)
- Travailler déconnecté

### Les consignes pour travailler avec Git ###

- la branche principale pour le projet qui tourne + les branches pour développer (git branch)
- => 1 compte Entreprise (organisation) + des comptes développeurs
- Ne pas autoriser les dev à rappatrier sur la branche principale => Notion de "Release master/Responsable intégration" à qui on doit faire une pull request
- git log,  git status, git rebase
- lire l'API rest pour comprendre mieux le fonctionnement (<https://developer.github.com/v3/>)
- Livre Progit de Scott Chacon

### Procédure Git avancée ###

1. On crée un compte "organisation"
2. On crée un compte "release master" (seul à avoir les droits sur le dépôt)
3. Chaque dévéloppeur se créer un dépôt
4. Les développeurs doivent faire une copie du dépôt principal (fork) pour travailler sur le projet.
5. Ils doivent faire un "pull" pour travailler en local.
6. Ils doivent faire un "push" pour rappatrier sur leur serveur.
7. Les dévéloppeurs devront faire une "pull request" pour demander au "release master" d'intégrer leurs modifs
8. Il y a désynchronisation des dépôts : dépôts dévéloppeur local/serveur + dépôt dévéloppeur/dépôt organisation.
9. On peut faire des "git reset" pour supprimer l'historique des commit, pour n'avoir qu'un seul commit lors de la "pull request".

---

## Glossaire ##

- **Repository** : Dépôt
- **Check in** : Dépôt
- **To check in** : Déposer, mettre en dépôt, faire un dépôt.
- **Check out** : Retrait
- **To check out** : Retirer, récupérer (parfois rapatrier est une bonne alternative)
- **To commit** : Consigner
- **Stage area** : Zone d'attente
- **To stage** : Mettre en attente
- **Change** : Modification (à préférer à changement)
- **stash** : Remise
- **To stash** : Remiser
- **Checksum** : Somme de contrôle
- **Hash** : Empreinte (Alternatives: signature, hachage (correct mais à éviter))
- **Workflow** : Processus (Alternative: scénario)
- **Snapshot** : Instantané
- **Diff** : Diff
- **To track** : Suivre
- **untracked** : non-suivi
- **unmodified** : non-modifié
- **To update** : Mettre à jour
