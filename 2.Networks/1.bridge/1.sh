#Creating a network and assigning a container to it
docker network create lab_network

docker run -it --network-alias container_1 --name container_1 -h container_1 --rm --network lab_network mcbacker/ubuntu:lab bash