while getopts p:n: option
do
case "${option}"
in
p) PORT=${OPTARG};;
n) NAME=${OPTARG};;
esac
done

NAME=${NAME:=laraveldev}
PORT=${PORT:=8000} 

echo Composing development NAME $NAME PORT $PORT 
PORT=$PORT NAME=$NAME docker-compose -f ./docker-development.yml up
