# Lumen/Laravel PHP & Composer Docker

Docker scripts to create lightweight PHP (FPM) and Composer images with Laravel >=5.6 extensions

- The images are based on PHP FPM alpine images. Extensions included:
    - BCMath
    - PDO MySQL
    - Exif
    - GD Graphics library

## Usage

Check latest available version [here](https://hub.docker.com/u/mimidots)

1) PHP base image ``docker pull mimidots/php7.4:<version>``
2) PHP composer image ``docker pull mimidots/composer:<version>``

## Building

1) Build the PHP base image first

 ```shell
docker build -t x/xxx:xx docker_file_path
```

where

- `x/xxx:xx` is the image tag e.g. `demo/php7.4-alpine:latest`
- ``docker_file_path`` is the path to the `Dockerfile` e.g. `./php7.4/Dockerfile`

2) Build a composer image utilizing above PHP image as a base.

 ```shell
docker build --build-arg x/xxx:xx  -t y/yyy:xx ./composer/Dockerfile
```

where

- ``xxx.xx.xx`` is PHP image tag from step 1 above
- ``y/yyy:xx`` is a tag for the composer image

## Example/Demo utilizing the PHP base image

A ``docker-compose`` demo available in the [example](example) folder.

- cd to the example folder ``cd example``
- Start the docker services ``IMAGE=x/xxx:xx  docker-compose up`` where `x/xxx:xx` is PHP image tag
- Visit your browser at ``http://localhost:8000``