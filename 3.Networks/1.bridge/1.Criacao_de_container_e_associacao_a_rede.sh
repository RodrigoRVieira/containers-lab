### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

#Creating a network and assigning a container to it

clear >$(tty)

docker network create lab_network

printf " \ndocker \n"
printf " run                          ${GREEN} # Sobe um novo Container${NC}\n"
printf " -it                          ${GREEN} # Modo Interativo${NC}\n"
printf " --rm                         ${GREEN} # Remove o Container ao sair do Terminal${NC}\n"
printf " --network-alias container_1  ${GREEN} # Determina o nome do Container na Rede Bridge${NC}\n"
printf " --name container_1           ${GREEN} # Determina o ID do Container${NC}\n"
printf " --hostname container_1       ${GREEN} # Determina o nome do Host no Container${NC}\n"
printf " --network lab_network        ${GREEN} # Conecta o Container na rede 'lab_network'${NC}\n"
printf " rrvieira/ubuntu:1.0          ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n"
printf " bash                         ${GREEN} # Comando a ser executado${NC}\n\n"

printf "docker run -it --rm --network-alias container_1 --name container_1 -h container_1 --network lab_network rrvieira/ubuntu:1.0 bash\n\n"

docker run -it --rm --network-alias container_1 --name container_1 --hostname container_1 --network lab_network rrvieira/ubuntu:1.0 bash