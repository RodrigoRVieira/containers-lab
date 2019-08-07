#Creating a network and assigning a container to it
docker network create lab_network

echo "docker run -it &&"
echo "--network-alias container_2 &&"
echo "--name container_2 &&"
echo "--hostname container_2 && "
echo "--rm && "
echo "--network lab_network && "
echo "mcbacker/ubuntu:lab && "
echo "bash"

docker run -it &&
--network-alias container_2 &&
--name container_2 &&
--hostname container_2 && 
--rm &&
--network lab_network && 
mcbacker/ubuntu:lab &&
bash
