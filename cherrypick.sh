#!/bin/sh
# 
###############################################################################################
# Skript zum einfachen �bertragen von allgemeinen �nderungen in den Branches
# 
# Dieses Skript �bertr�gt die �nderungen die im Branch master commited werden. 
#
# Das Script ben�tigt die folgenden Kommandozeilenparameter:
# - commit-hash
#
###############################################################################################

# Bei Ausf�hrung auf dem Buildserver ist die Variable $WORKSPACE gesetzt 
# andernfalls wird das aktuelle Verzeichnis verwendet  

git checkout Dom�ne-01
git cherry-pick $1
git checkout Dom�ne-02
git cherry-pick $1
git checkout Dom�ne-03
git cherry-pick $1
git checkout Dom�ne-04
git cherry-pick $1
git checkout Dom�ne-05
git cherry-pick $1
git checkout Dom�ne-06
git cherry-pick $1
