### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

#Assigning a container to the host network

clear >$(tty)

printf " \ndocker \n"
printf " run                     ${GREEN} # Sobe um novo Container${NC}\n"
printf " -it                     ${GREEN} # Modo Interativo${NC}\n"
printf " --rm                    ${GREEN} # Remove o Container ao sair do Terminal${NC}\n"
printf " --name container_1      ${GREEN} # Determina o ID do Container${NC}\n"
printf " --hostname container_1  ${GREEN} # Determina o nome do Host no Container${NC}\n"
printf " --network host          ${GREEN} # Conecta o Container na rede do Host${NC}\n"
printf " mcbacker/ubuntu:lab     ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n"
printf " bash                    ${GREEN} # Comando a ser executado${NC}\n\n"

printf "docker run -it --rm --name container_1 --hostname container_1 --network host mcbacker/ubuntu:lab bash \n\n"

docker run -it --rm --name container_1 -h container_1 --network host mcbacker/ubuntu:lab bash