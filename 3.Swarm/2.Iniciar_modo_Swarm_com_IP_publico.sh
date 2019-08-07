#Initialize a Swarm with docker swarm init

docker swarm init --advertise-addr $(dig +short myip.opendns.com @resolver1.opendns.com)