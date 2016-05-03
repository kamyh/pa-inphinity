FROM jupyter/minimal-notebook

USER root

RUN pip install biopython \
&& conda install basemap \
&& pip install pandas

ADD muscle3.8.31_i86linux64 ./

#Get Labo HEIGVD
RUN mkdir ./inphinity \
&& sudo chmod 777 ./inphinity \
&& cd ./inphinity

ADD Labo-2_BBC-2016.ipynb ./inphinity
RUN sudo chmod +x ./inphinity/Labo-2_BBC-2016.ipynb \
&& sudo chmod 755 ./inphinity/Labo-2_BBC-2016.ipynb

RUN ls ./inphinity 


