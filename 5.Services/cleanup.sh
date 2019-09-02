#!/bin/bash

serviceId="$(docker service ls -f name=nginx -q)"

if [ ! -z "$serviceId" ]
then
        docker service rm $(docker service ls -f name=nginx -q)
else
        echo "Nothing to clean up!"
fi