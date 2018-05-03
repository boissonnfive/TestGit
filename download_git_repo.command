#! /bin/bash

# +---------------------------------------------------------------------------+
# | Télécharge un dépôt à partir de GitHub. (fichier double clicable)         |
# | Usage:  .download_git_repo.command  nomDepot                              |
# +---------------------------------------------------------------------------+

# +---------------------------------------------------------------------------+
# |  Fichier     : download_git_repo.command                                  |
# |  Version     : 1.0.0                                                      |
# |  Auteur      : Bruno Boissonnet                                           |
# |  Date        : 03/05/2018                                                 |
# +---------------------------------------------------------------------------+


DEPOT=${1}
curl -L -o master.zip http://github.com/boissonnfive/${DEPOT}/zipball/master/


# source 1 : Télécharger un dépôt github               : http://stackoverflow.com/a/18222354
# source 2 : Lancer un script par double-clic sur OS X : http://stackoverflow.com/questions/5125907/how-to-run-a-shell-script-in-os-x-by-double-clicking
