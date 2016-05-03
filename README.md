# pa-inphinity
HesSO MSE Pa on Machine Learning and Genetics.

# Docker
## Docker Commands
For the followinf commands you have to be in the directory containing a "Dokerfile"

#### Build a new image

Replace <image Name> by any name you wish to give to your image.
```bash
$ docker build -t "<image Name>" .
```

#### Run an image in a new container

Replace <image name> by an existing image name.
```bash
$ docker run -i -t -d -p 8888:8888 <image name>
```

#### Run an image with a local directory mount in the docker container
```bash
$ docker run -v <path to local directory>:<mount path on container machine> -i -t -d -p 8888:8888 <image name>
```

#### Connect to the container using bash
```bash
$ docker exec -i -t <container ID> /bin/bash
``` 
