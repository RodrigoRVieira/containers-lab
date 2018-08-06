#Creates a new container with access granted to the secrets

docker service create --name nginx --replicas 2 --secret connStringFromStdIn --secret connStringFromFile nginx
