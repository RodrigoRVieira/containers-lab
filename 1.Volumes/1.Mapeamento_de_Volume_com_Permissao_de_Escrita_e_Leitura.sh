### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

### Volume mapping with RW rights

clear >$(tty)

docker volume create vol_data

printf " \ndocker \n"
printf " run                  ${GREEN} # Sobe um novo Container${NC}\n"
printf " -it                  ${GREEN} # Modo Interativo${NC}\n"
printf " --rm                 ${GREEN} # Remove o Container ao sair do Terminal${NC}\n"
printf " -v vol_data:/volume  ${GREEN} # Atribui à pasta 'volume' do Container o Volume 'vol_data'${NC}\n"
printf " ubuntu               ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n"
printf " bash                 ${GREEN} # Comando a ser executado${NC}\n\n"

printf "docker run -it --rm -v vol_data:/volume ubuntu bash\n\n"

docker run -it --rm -v vol_data:/volume ubuntu bash