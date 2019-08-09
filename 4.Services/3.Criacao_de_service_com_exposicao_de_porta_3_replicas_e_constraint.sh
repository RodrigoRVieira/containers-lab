### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

./cleanup.sh

#Creates a new service for Nginx with a given constraint and exposes to port 80

clear >$(tty)

printf " \ndocker \n"
printf " service                            ${GREEN} # Especifica 'Serviço' como recurso a ser gerenciado${NC}\n"
printf " create                             ${GREEN} # Determina a criação de um novo Serviço${NC}\n"
printf " --name nginx                       ${GREEN} # Especifica o nome do Serviço${NC}\n"
printf " -p 80:80                           ${GREEN} # Faz o mapeamento da porta 80 do Host com a porta 80 do Service/Container (Padrão do Nginx)${NC}\n"
printf " --replicas 3                       ${GREEN} # Especifica o número de réplicas de Tasks/Containers ${NC}\n"
printf " --constraint 'node.role==manager'  ${GREEN} # Restringe a atribuição de Tasks/Containers aos Nodes/Hosts que possuem a role 'manager'${NC}\n"
printf " nginx                              ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n\n"

printf "docker service create --name nginx -p 80:80 --replicas 3 --constraint 'node.role==manager' nginx \n\n"

docker service create --name nginx -p 80:80 --replicas 3 --constraint 'node.role==manager' nginx

./customize_nginx.sh

rm *.html