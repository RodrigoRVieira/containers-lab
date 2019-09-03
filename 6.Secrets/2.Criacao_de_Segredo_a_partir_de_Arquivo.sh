### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

#Creates a new secret from file

clear >$(tty)

printf " \ndocker \n"
printf " secret               ${GREEN} # Command para manipulação de Segredos${NC}\n"
printf " create               ${GREEN} # Option para a criação de Segredos${NC}\n"
printf " connStringFromStdIn  ${GREEN} # Nome do Segredo${NC}\n"
printf " connString.json      ${GREEN} # Nome do arquivo com os dados sensíves que irão compor o Segredo${NC}\n\n"

printf "docker secret create connStringFromFile connString.json"

echo "{ \"ConnString\" : \"DataSource=dataSourceFile;User=userId;Password=password\" }" > connString.json

docker secret create connStringFromFile connString.json
