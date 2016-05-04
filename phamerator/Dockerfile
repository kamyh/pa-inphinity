FROM debian@sha256:a9c958be96d7d40df920e7041608f2f017af81800ca5ad23e327bc402626b58e

USER root

RUN apt-get update &&
RUN apt-get upgrade

RUN wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-4.0.0-Linux-x86_64.sh &&
RUN ./Anaconda2-4.0.0-Linux-x86_64.sh

RUN conda create --name phamerator python=2
RUN source activate phamerator

RUN apt-get install pyro clustalw python-biopython mysql-server python-mysqldb python-pygoocanvas

RUN apt-get install gcc &&
RUN apt-get install python-dev &&
RUN python setup.py install

RUN wget http://phamerator.csm.jmu.edu/files/phamerator-1.1.tar.gz &&
RUN tar -xvf phamerator-1.1.tar.gz &&
RUN apt-get remove python-biopython &&
RUN wget http://biopython.org/DIST/biopython-1.50.tar.gz &&
RUN tar -xzvf biopython-1.50.tar.gz &&
RUN cd biopython-1.50/

RUN apt-get install python-glade2 &&
RUN apt-get install easy_install &&
RUN apt-get install python-setuptools &&
RUN easy_install weblogo %%
RUN apt-get install python-webkit &&
RUN apt-get install python-webkit-dev

RUN cd ../phamerator-1.1/phamerator
RUN ./Phamerator

