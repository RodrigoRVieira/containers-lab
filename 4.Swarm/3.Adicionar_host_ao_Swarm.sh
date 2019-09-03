#Obter join token a partir da saída do script anterior

docker swarm join --token ... --advertise-addr $(dig +short myip.opendns.com @resolver1.opendns.com)