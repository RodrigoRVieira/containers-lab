#Firing up a Nginx without exposing to the host
docker network create lab_network

docker run -d --network-alias container_3 --name container_3 -h container_3 --network lab_network -v $(pwd)/container_3.html:/usr/share/nginx/html/index.html nginx
