#Obter join token a partir da saída do script anterior

docker swarm join --token SWMTKN-1-1x62n1nm36gffu3yeix85ow92o0rz9kvnqhjf0o0bifd75jrau-8jw3ov1qtpoxlkjc56xirojq3 191.232.165.77:2377 --advertise-addr $(dig +short myip.opendns.com @resolver1.opendns.com)