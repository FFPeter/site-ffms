#!/bin/sh
# 
###############################################################################################
# 
# Dieses Script holt f�hrt den build f�r alle aktuelle Dom�nen aus 
# uns erstellt die Images.
#
# Das Script benötigt die folgenden Kommandozeilenparameter:
# - Gluon-Commit (z.B. v2014.4)
# - Build-Nummer (z.B.1.0.2) 
# - Optionale Parameter für make (z.B. V=s oder -j 4)
#  
###############################################################################################

letzterBefehlErfolgreich;

git checkout Dom�ne-01;
letzterBefehlErfolgreich;
sh ./build.sh $1 $2 domaene01 $3 $4 $5 $6 $7 $8 $9;
letzterBefehlErfolgreich;
git checkout Dom�ne-02;
letzterBefehlErfolgreich;
sh ./build.sh $1 $2 domaene02 $3 $4 $5 $6 $7 $8 $9;
letzterBefehlErfolgreich;
git checkout Dom�ne-03;
letzterBefehlErfolgreich;
sh ./build.sh $1 $2 domaene03 $3 $4 $5 $6 $7 $8 $9;
letzterBefehlErfolgreich;
git checkout Dom�ne-04;
letzterBefehlErfolgreich;
sh ./build.sh $1 $2 domaene04 $3 $4 $5 $6 $7 $8 $9;
letzterBefehlErfolgreich;
git checkout Dom�ne-05;
letzterBefehlErfolgreich;
sh ./build.sh $1 $2 domaene05 $3 $4 $5 $6 $7 $8 $9;
letzterBefehlErfolgreich;
git checkout Dom�ne-06;
letzterBefehlErfolgreich;
sh ./build.sh $1 $2 domaene06 $3 $4 $5 $6 $7 $8 $9;
letzterBefehlErfolgreich;
git checkout Dom�ne-07-L2TP;
letzterBefehlErfolgreich;
sh ./build.sh $1 $2 domaene07 $3 $4 $5 $6 $7 $8 $9;
letzterBefehlErfolgreich;
git checkout Dom�ne-08;
letzterBefehlErfolgreich;
sh ./build.sh $1 $2 domaene08 $3 $4 $5 $6 $7 $8 $9;
letzterBefehlErfolgreich;
