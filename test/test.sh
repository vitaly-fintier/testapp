APP_PORT=3100
APP_NAME=testapp

echo "CONTAINER_TEST_IMAGE = $CONTAINER_TEST_IMAGE"

docker run -d --name=$APP_NAME -p $APP_PORT:$APP_PORT -e PORT=$APP_PORT $CONTAINER_TEST_IMAGE


# Let docker start 
sleep 15

/bin/curl http://localhost:3100 

EXITCODE=$?

docker stop $APP_NAME 
docker rm -f $APP_NAME

exit $EXITCODE

