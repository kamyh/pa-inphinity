# pa-inphinity
HesSO MSE Pa on Machine Learning and Genetics.

# Docker
## Docker Commands

#### Build a new image

Replace <image Name> by any name you wish to give to your image
```bash
$ docker build -t "<image Name>" .
```

#### Run an image in a new container

Replace <image name> by an existing image name
```bash
$ docker run -i -t -d -p 8888:8888 <image name>
```
