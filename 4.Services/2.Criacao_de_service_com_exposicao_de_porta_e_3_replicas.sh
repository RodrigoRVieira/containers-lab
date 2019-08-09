### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

./cleanup.sh

#Creates a new service for Nginx with 3 replicas and exposes to port 80

clear >$(tty)

printf " \ndocker \n"
printf " service       ${GREEN} # Especifica 'Serviço' como recurso a ser gerenciado${NC}\n"
printf " create        ${GREEN} # Determina a criação de um novo Serviço${NC}\n"
printf " --name nginx  ${GREEN} # Especifica o nome do Serviço${NC}\n"
printf " -p 80:80      ${GREEN} # Faz o mapeamento da porta 80 do Host com a porta 80 do Service/Container (Padrão do Nginx)${NC}\n"
printf " --replicas 3  ${GREEN} # Especifica o número de réplicas de Tasks/Containers ${NC}\n"
printf " nginx         ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n\n"

printf "docker service create --name nginx -p 80:80 --replicas 3 nginx \n\n"

docker service create --name nginx -p 80:80 --replicas 3 nginx

echo "<html><b>This is Container #1</b><br><br><img src=\"gif.webp\"></html>" > index1.html && docker cp ./index1.html $(docker ps -f name=nginx.1 -q):/usr/share/nginx/html/index.html && docker cp ./images/gif1.webp $(docker ps -f name=nginx.1 -q):/usr/share/nginx/html/gif.webp
echo "<html><b>This is Container #2</b><br><br><img src=\"gif.webp\"></html>" > index2.html && docker cp ./index2.html $(docker ps -f name=nginx.2 -q):/usr/share/nginx/html/index.html && docker cp ./images/gif2.webp $(docker ps -f name=nginx.2 -q):/usr/share/nginx/html/gif.webp
echo "<html><b>This is Container #3</b><br><br><img src=\"gif.webp\"></html>" > index3.html && docker cp ./index3.html $(docker ps -f name=nginx.3 -q):/usr/share/nginx/html/index.html && docker cp ./images/gif3.webp $(docker ps -f name=nginx.3 -q):/usr/share/nginx/html/gif.webp