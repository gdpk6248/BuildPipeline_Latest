#/bin/sh

ARGS=$(cat /opt/wezva/app.properties)

echo "java -jar app.jar $ARGS $@"
cmd="java -jar app.jar $ARGS $@"

eval $cmd
