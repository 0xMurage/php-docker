if [ -z "$1" ]
 then
   echo "No version provided. "
   exit 1
fi

version=$1

docker build --build-arg VERSION=$version -t mimidots/composer:$version-php7.4 composer/.