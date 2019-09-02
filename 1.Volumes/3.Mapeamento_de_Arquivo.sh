### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

###File mapping

clear >$(tty)

printf " \ndocker \n"
printf " run                                       ${GREEN} # Sobe um novo Container${NC}\n"
printf " -it                                       ${GREEN} # Modo Interativo${NC}\n"
printf " --rm                                      ${GREEN} # Remove o Container ao sair do Terminal${NC}\n"
printf " -v $(pwd)/config.json:/config/config.json ${GREEN} # Mapeia o arquivo 'config.json' do Host para o arquivo '/config/config.json' no Container${NC}\n"
printf " ubuntu                                    ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n"
printf " bash                                      ${GREEN} # Comando a ser executado${NC}\n\n"

printf "docker run -it --rm -v $(pwd)/config.json:/config/config.json ubuntu bash\n\n"

docker run -it --rm -v $(pwd)/config.json:/config/config.json ubuntu bash