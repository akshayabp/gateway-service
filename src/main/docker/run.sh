#!/bin/sh
echo "********************************************************"
echo "Starting the Eureka Server"
while ! `nc -z eurekaserver 8761`; do sleep 3; done
echo "******* Eureka Server has started"

java \
	-Dspring.profiles.active=docker \
	-jar /usr/local/gateway_service/@project.build.finalName@.jar
