#Firing up a Nginx and exposing to the host
docker network create lab_network

docker run -d --network-alias container_4 --name container_4 -h container_4 --network lab_network -p 80:80 -v $(pwd)/container_4.html:/usr/share/nginx/html/index.html nginx
