### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

### Build an image

clear >$(tty)

docker volume create vol_data

printf " \ndocker \n"
printf " build                ${GREEN} # Constrói uma nova Imagem${NC}\n"
printf " -t                   ${GREEN} # Especifica a TAG da imagem, preparando para o push pro Docker Hub${NC}\n"
printf " owner/repository:tag ${GREEN} # Tag composta por NOME_DO_USUARIO/REPOSITORIO:VERSAO${NC}\n"
printf " .                    ${GREEN} # Especifica o contexto/caminho a ser passado para o Docker${NC}\n\n"

printf "docker build -t owner/repository:tag .\n\n"

docker build -t owner/repository:tag .