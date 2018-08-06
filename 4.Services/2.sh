#Creates a new service for Nginx with 3 replicas and exposes to port 80

./cleanup.sh

docker service create --name nginx -d -p 80:80 --replicas 3 nginx
