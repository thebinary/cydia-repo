#!/bin/bash

#Author	    :	thebinary <binary4bytes@gmail.com>
#Date	    :	Fri Aug 05 18:08:49 NPT 2016-08-05
#Purpose    :	Scan packages and create the Packages.bz2

rm -vf Packages.bz2
dpkg-scanpackages -m . /dev/null > Packages
bzip2 Packages

