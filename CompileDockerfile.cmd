# Please use the Git bash to run all these things
REPO_NAME=ivan-helloworld

docker build . -t $REPO_NAME:1.0.0
docker images | grep $REPO_NAME | awk '{print "docker run "$3}' | bash
docker save -o $REPO_NAME".tar" $REPO_NAME

