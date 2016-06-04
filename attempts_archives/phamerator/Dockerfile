FROM dorowu/ubuntu-desktop-lxde-vnc

USER root

ENV CONDA_DIR /opt/conda

RUN sudo apt-get update

RUN apt-get install -y \
    wget \
    bzip2 \
    unzip


RUN apt-get install -y \
    python-glade2 \
    python-setuptools \
    python-webkit \
    python-webkit-dev \
    sudo

RUN easy_install numpy
RUN easy_install weblogo


RUN cd /tmp && \
    mkdir -p $CONDA_DIR && \
    wget --quiet https://repo.continuum.io/miniconda/Miniconda3-3.19.0-Linux-x86_64.sh && \
    echo "9ea57c0fdf481acf89d816184f969b04bc44dea27b258c4e86b1e3a25ff26aa0 *Miniconda3-3.19.0-Linux-x86_64.sh" | sha256sum -c - && \
    /bin/bash Miniconda3-3.19.0-Linux-x86_64.sh -f -b -p $CONDA_DIR && \
    rm Miniconda3-3.19.0-Linux-x86_64.sh && \
    $CONDA_DIR/bin/conda install --quiet --yes conda==3.19.1 && \
    $CONDA_DIR/bin/conda config --system --add channels conda-forge

RUN $CONDA_DIR/bin/conda clean -tipsy

RUN $CONDA_DIR/bin/conda create --name phamerator python=2
RUN $CONDA_DIR/bin/conda install -c biobuilds clustalw=2.1
#RUN $CONDA_DIR/bin/source activate phamerator

RUN apt-get install -y \
    pyro \
    python-biopython \
    mysql-server \
    python-mysqldb \
    python-pygoocanvas

RUN apt-get install -y \
    gcc \
    python-dev

RUN wget http://phamerator.csm.jmu.edu/files/phamerator-1.1.tar.gz && \
    tar -xvf phamerator-1.1.tar.gz && \
    apt-get remove -y python-biopython && \
    wget http://biopython.org/DIST/biopython-1.50.tar.gz && \
    tar -xzvf biopython-1.50.tar.gz

RUN cd biopython-1.50/ ; \
    python ./setup.py install