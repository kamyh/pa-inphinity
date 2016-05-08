# Jupyter Notebook With Working Alignment Softwares

## Must do

* Be careful, the project directory have to be in ~/... (/home/...)
* You have to be in the "jupyter_align" project directory to run the following commands

## Build
```bash
$ docker build -t "pa/align_phpmyadmin" .
```

## Run
Run with 22, 80 and 3306 ports opened:
```
docker run -v ~/pa-inphinity/jupyter_align_phpmyadmin_sql/src:/home/pa/work/jupyter_align -i -t -d -p 49160:22 -p 49161:80 -p 49162:3306 -p 8888:8888 pa/align_phpmyadmin
```
