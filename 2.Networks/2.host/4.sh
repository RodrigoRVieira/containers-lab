#Firing up a Nginx without exposing to the host by using the host network

docker run --name container_4 -h container_4 --network host -v $(pwd)/container_4.html:/usr/share/nginx/html/index.html nginx
