### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

#Creates a new container with access granted to the secrets

clear >$(tty)

printf " \ndocker \n"
printf " secret                        ${GREEN} # Command para manipulação de Services${NC}\n"
printf " create                        ${GREEN} # Option para a criação de Service${NC}\n"
printf " --name nginx                  ${GREEN} # Nome do Service${NC}\n"
printf " --replicas 2                  ${GREEN} # Determina o número de réplicas do Service\n"
printf " --secret connStringFromStdIn  ${GREEN} # Expõe o Secret 'connStringFromStdIn' para o Service sendo criado\n"
printf " --secret connStringFromFile   ${GREEN} # Expõe o Secret 'connStringFromFile' para o Service sendo criado\n"
printf " nginx                         ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n\n"

printf "docker service create --name nginx --replicas 2 --secret connStringFromStdIn --secret connStringFromFile nginx"

docker service create --name nginx --replicas 2 --secret connStringFromStdIn --secret connStringFromFile nginx
