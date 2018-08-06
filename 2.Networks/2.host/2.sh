#Assigning a container to the host network

docker run -it --name container_2 -h container_2 --rm --network host mcbacker/ubuntu:lab bash
