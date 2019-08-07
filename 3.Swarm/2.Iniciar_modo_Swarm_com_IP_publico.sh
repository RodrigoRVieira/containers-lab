### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

#Initialize a Swarm with docker swarm init

clear >$(tty)

printf "Make sure ${RED}2377,7946,4789${NC} ports are open in Azure Portal\n\n"

docker swarm init --advertise-addr $(dig +short myip.opendns.com @resolver1.opendns.com)