#Creates a new service for Nginx with a given constraint and exposes to port 80

./cleanup.sh

docker service create --name nginx -d -p 80:80 --constraint 'node.hostname==node1' --replicas 3 nginx
