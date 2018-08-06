#Creating a network and assigning a container to it
docker network create lab_network

docker run -it --network-alias container_2 --name container_2 -h container_2 --rm --network lab_network mcbacker/ubuntu:lab bash
