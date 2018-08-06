#Creates a new service for Nginx and exposes to port 80

docker service create --name nginx -d -p 80:80 nginx
