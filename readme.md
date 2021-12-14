# Laravel PHP & Composer Docker

Build PHP and Composer images to run your Laravel 5.6,6,& 7 projects.

- The images are based on PHP 7.X FPM Alpine image
- Additional extensions that are included:
    - PDO
    - PDO_MySQL
    - Bc Math
    - Exif
    - GD Graphics library

## Usage
Check latest available version [here](https://hub.docker.com/r/mimidots/php7.4/tags)

1) PHP base image ``docker pull mimidots/php7.4:<version>``
2) PHP composer image ``docker pull mimidots/composer:<version>``

## Build

1) Build the PHP base image first

 ```shell
./build-base.sh XXX.XX.XX
```

where ``xxx.xx.xx`` is the image tag version

2) Build the composer image

 ```shell
./build-composer.sh XXX.XX.XX
```

where ``xxx.xx.xx`` is the version to tag composer with.
*Note*: The version is also applied to base php composer image

## Example/Demo utilizing the PHP base image

- Demo available in the [example](example) folder.
- Assuming you have ``docker-compose`` on the path, run``docker-compose up`` to start the services.
- Visit your browser at ``http://localhost:8000``