#!/usr/bin/env bash

sudo apt-get update &&
sudo apt-get upgrade

sudo wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-4.0.0-Linux-x86_64.sh &&
sudo ./Anaconda2-4.0.0-Linux-x86_64.sh

sudo conda create --name phamerator python=2
sudo source activate phamerator

sudo apt-get install pyro clustalw python-biopython mysql-server python-mysqldb python-pygoocanvas

sudo apt-get install gcc &&
sudo apt-get install python-dev &&
sudo python setup.py install

sudo wget http://phamerator.csm.jmu.edu/files/phamerator-1.1.tar.gz &&
tar -xvf phamerator-1.1.tar.gz &&
sudo apt-get remove python-biopython &&
wget http://biopython.org/DIST/biopython-1.50.tar.gz &&
tar -xzvf biopython-1.50.tar.gz &&
cd biopython-1.50/

sudo apt-get install python-glade2 &&
sudo apt-get install easy_install &&
sudo apt-get install python-setuptools &&
sudo easy_install weblogo %%
sudo apt-get install python-webkit &&
sudo apt-get install python-webkit-dev

cd ../phamerator-1.1/phamerator
sudo ./Phamerator
