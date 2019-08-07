### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

###Folder mapping

clear >$(tty)

printf " \ndocker \n"
printf " run                  ${GREEN} # Sobe um novo Container${NC}\n"
printf " -it                  ${GREEN} # Modo Interativo${NC}\n"
printf " --rm                 ${GREEN} # Remove o Container ao sair o Terminal${NC}\n"
printf " -v $(pwd)/data:/data ${GREEN} # Mapeia a pasta './data' do Host para a pasta '/data' do Container${NC}\n"
printf " ubuntu               ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n"
printf " bash                 ${GREEN} # Comando a ser executado${NC}\n\n"

printf "docker run -it --rm -v $(pwd)/data:/data ubuntu bash\n\n"

docker run -it --rm -v $(pwd)/data:/data ubuntu bash