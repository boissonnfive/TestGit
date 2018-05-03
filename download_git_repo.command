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


# +---------------------------------------------------------------------------+
# |                             FONCTIONS                                     |
# +---------------------------------------------------------------------------+

COMPTE=boissonnfive


# fonction principale du programme
main()
{
	processParams $@
	# instructions
	# RESULTAT=$(fonction $1 $2)
}


# Affiche un message d'aide
# Pas de paramètres
usage()
{    
    echo "Usage: $0 [-options] nomDepot"
    echo "Télécharge un dépôt ou tous les dépôts de GitHub. "
    echo ""
    echo "    -h:         affiche cette aide"
    echo "    NomDepot: Le nom du dépôt GitHub à télécharger."
    echo ""
    echo "Si aucun paramètre, télécharge tous les dépôts GitHub."
    echo ""
}


# Procédure de traitement des paramètres du programme
# $1 : les paramètres du programme
# retour : NA
# exemple : processParams $@
processParams()
{
	if [ $# -gt 0 ]; then
    	if [ $1 == "-h" ]; then
			usage
			exit 0
    	elif [ $# -lt 2 ]; then
			telechargeDepot $1
			#echo $DEPOT
    	else
			usage
			exit 0
		fi
    else
			telechargeTout
			exit 0
    fi
}

# Télécharge tous les dépôts de GitHub

telechargeTout()
{
	RET="Téléchargement de tous les dépôt GitHub du compte ${COMPTE}"
	# instructions
	echo $RET
}


# Télécharge le dépôt GitHub en paramètre
# $1 : nom du dépôt GitHub à télécharger
# retour : renvoie 0 si OK, autre chose sinon.

telechargeDepot()
{
	DEPOT=${1}
	curl -L -o master.zip http://github.com/${COMPTE}/${DEPOT}/zipball/master/
}


# +---------------------------------------------------------------------------+
# |                        DÉBUT DU PROGRAMME                                 |
# +---------------------------------------------------------------------------+

main $@




# source 1 : Télécharger un dépôt github               : http://stackoverflow.com/a/18222354
# source 2 : Lancer un script par double-clic sur OS X : http://stackoverflow.com/questions/5125907/how-to-run-a-shell-script-in-os-x-by-double-clicking
