while getopts p:n: option
do
case "${option}"
in
p) PORT=${OPTARG};;
n) NAME=${OPTARG};;
esac
done

NAME=${NAME:=laravelprod}
PORT=${PORT:=8000} 

echo Cloning project folder into dist folder
rm -rf dist
cp -r laravel dist
echo Autoloader Optimization
docker run --rm --volume ./dist:/app -w /app composer composer install --optimize-autoloader --no-dev
echo Optimizing Configuration Loading
docker run --rm --volume ./dist:/app -w /app php:7-cli-alpine php artisan config:cache
echo Composing production NAME $NAME PORT $PORT N
PORT=$PORT NAME=$NAME docker-compose -f ./docker-production.yml up
