### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

#Creates a new secret from Standard Input

clear >$(tty)

printf " \ndocker \n"
printf " secret               ${GREEN} # Command para manipulação de Segredos${NC}\n"
printf " create               ${GREEN} # Option para a criação de Segredos${NC}\n"
printf " connStringFromStdIn  ${GREEN} # Nome do Segredo${NC}\n"
printf " -                    ${GREEN} # Direciona a saída do printf para a entrada do Segredo\n\n"

printf "docker secret create connStringFromStdIn -"

printf "{ \"ConnString\" : \"DataSource=dataSourceStdIn;User=userId;Password=password\" }" | docker secret create connStringFromStdIn -
