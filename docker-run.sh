#This script is meant to be run from within the micoservice directory
#for example:
#cd dummy-micro-service
#../docker-run.sh

MICRO_SERVICE=${PWD##*/} 
echo $MICRO_SERVICE

docker run -p 8080:8080 nuldemesh/$MICRO_SERVICE:1.0