
#This script is meant to be run from within the micoservice directory
#for example:
#cd dummy-micro-service
#../docker-push.sh

AWS_ACCOUNT_ID=209544401946
MICRO_SERVICE=${PWD##*/} 
IMAGE_ID=$(docker images --filter=reference=nuldemesh/$MICRO_SERVICE --format "{{.ID}}")
echo $IMAGE_ID $MICRO_SERVICE $AWS_ACCOUNT_ID

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 209544401946.dkr.ecr.us-east-1.amazonaws.com
aws ecr create-repository --repository-name $REPOSITORY_NAME || true
docker tag $IMAGE_ID $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/$MICRO_SERVICE:latest
docker push $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/$MICRO_SERVICE:latest