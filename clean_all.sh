#!/bin/bash
echo "Detediendo docker"
docker stop server01 server02
echo "Docker detenido"
echo
echo "----------------------"
echo "Eliminando docker"
docker rm server01 server02
echo "Docker eliminado."
echo
echo "----------------------"
echo "Limpieza lista."
echo
echo "----------------------"
echo "Recreando dockers"
./create_dockers.sh server:16.04

ssh -o StrictHostKeyChecking=no root@server01 -p 2221 -i key.private hostname
ssh -o StrictHostKeyChecking=no root@server02 -p 2222 -i key.private hostname
echo "Adicionada la llave ssh."
echo
echo "----------------------"
echo "Sigue con ansible001"
