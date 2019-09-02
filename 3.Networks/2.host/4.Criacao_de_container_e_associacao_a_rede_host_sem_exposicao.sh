### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

#Firing up a Nginx without exposing to the host by using the host network

clear >$(tty)

printf " \ndocker \n"
printf " run                                                          ${GREEN} # Sobe um novo Container${NC}\n"
printf " --name container_4                                           ${GREEN} # Determina o ID do Container${NC}\n"
printf " --hostname container_4                                       ${GREEN} # Determina o nome do Host no Container${NC}\n"
printf " --network host                                               ${GREEN} # Conecta o Container na rede do Host${NC}\n"
printf " -v $(pwd)/container_4.html:/usr/share/nginx/html/index.html  ${GREEN} # Faz o mapeamento do arquivo './container_4.html' do Host para o arquivo index.html padrão do Nginx${NC}\n"
printf " nginx                                                        ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n\n"

printf "docker run -d --name container_4 -h container_4 --network host -v $(pwd)/container_4.html:/usr/share/nginx/html/index.html nginx"

docker run --name container_4 -h container_4 --network host -v $(pwd)/container_4.html:/usr/share/nginx/html/index.html nginx