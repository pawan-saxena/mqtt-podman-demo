# mqtt_podman_demo
mqtt podman demo
This demo intends to showcase the usage of dockerized podman containers using podman infra to deploy and have mqtt client talk with each other using a mqtt broker.

Broker Details : 
1. We are using official docker image eclipse mqtt from dockerhub : https://hub.docker.com/_/eclipse-mosquitto.
2. The broker would be ran as podman container which in trun will run inside a docker container.
3. The Broker would be responsible handling the incoming publisher's messages and handing it down to concerned subscribers.

Publisher Details :
1. The publisher would be a podman container running inside a docker container.
2. We have written the publisher in node.js
3. It will publish messages on regular intervals of 5 seconds to mqtt broker.

Subscriber Details : 
1. The subscriber would be a podman container running inside a docker container.
2. We have written the subscriber in node.js.
3. It will receive the message on regular basis of 5 seconds and console log them


Steps to build and run the app : 
1. Clone the repo from github : https://github.com/pawan-saxena/mqtt-podman-demo 
use either https or ssh.
2. After cloning make sure that you have docker installed on VM.
3. run : `docker build -t custom_container_name` and then `docker run --privileged custom_container_name` - use of privileged flag is required.
4. Look for results.

Final build will become available after building Dockerfile in this repo.
This Dockerfile will in turn spin up 3 more containers using docker-compose.yml. 

The docker-compose.yml we are using will pull two public images who's code in available in respective folders in root directory.

Publisher code : mqtt-podman-publisher
Subscriber code : mqtt-podman-subscriber

Enjoy !!!!