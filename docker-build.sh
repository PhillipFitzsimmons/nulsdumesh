#This script is meant to be run from within the micoservice directory
#for example:
#cd dummy-micro-service
#../docker-build.sh
MICRO_SERVICE=${PWD##*/} 
echo $MICRO_SERVICE
docker build -t nuldemesh/$MICRO_SERVICE:1.0 .
