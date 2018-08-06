#Assigning a container to the host network

docker run -it --name container_1 -h container_1 --rm --network host mcbacker/ubuntu:lab bash 
