#!/bin/sh
# 
###############################################################################################
# Buildscript zu erstellung Manifest-dateien f�r den Autoupdater
# 
# Dieses Script wird nach dem Erstellen der Images ausgef�hrt und erstellt
# die Manifest-Dateien mit den Signaturen des Autoupdater. 
# Es werden insgesamt 3 manifest-Dateien erstellt. 
#
# F�r die Signierung muss das Tool Tool 'ecdsasign' vverf�gbar sein.
# Repo: https://github.com/tcatm/ecdsautils
#
# Das Script ben�tigt die folgenden Kommandozeilenparameter:
# - Gluon-Commit (z.B. v2014.4)
# - Build-Nummer (z.B. 114)
# - Datei, die den Schl�ssel f�r die Signierung enth�lt (z.B. ~/secret)
#
###############################################################################################

# Releasenummer der zu erstellenden Images
GLUON_RELEASE=$1+$2

# Bei Ausf�hrung auf dem Buildserver ist die Variable $WORKSPACE gesetzt 
# andernfalls wird das aktuelle Verzeichnis verwendet  

if [ "x$WORKSPACE" = "x" ]; then
	WORKSPACE=`pwd`
fi

cd $WORKSPACE/gluon

# Manifeste erstellen 
make manifest GLUON_RELEASE=$GLUON_RELEASE GLUON_BRANCH=experimental GLUON_PRIORITY=0
make manifest GLUON_RELEASE=$GLUON_RELEASE GLUON_BRANCH=beta GLUON_PRIORITY=1
make manifest GLUON_RELEASE=$GLUON_RELEASE GLUON_BRANCH=stable GLUON_PRIORITY=3

# Manifeste signieren 
sh contrib/sign.sh $3 images/sysupgrade/experimental.manifest
sh contrib/sign.sh $3 images/sysupgrade/beta.manifest
sh contrib/sign.sh $3 images/sysupgrade/stable.manifest
