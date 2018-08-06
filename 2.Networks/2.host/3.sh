#Firing up a Nginx without exposing to the host by using the host network

docker run -d --name container_3 -h container_3 --network host -v $(pwd)/container_3.html:/usr/share/nginx/html/index.html nginx
