#!/bin/bash

result=$(docker ps -aq)

if [[ "$result" = '' ]]; then
	echo 'Sem contêineres rodando!'
else
	echo 'Pelo menos 1 contêiner rodando!'
	docker stop $(docker ps -aq)
	echo 'Contêineres parados!'
fi
