# Ansible_Mediawiki
Instalación de Mediawiki en su última versión en un contenedor docker usando Ansible


## Diseño de infraestructura

![mediawiki 1](https://user-images.githubusercontent.com/21178320/31247930-baa90d2e-a9d7-11e7-83a1-b5bc1c2068b5.png)


Para la instalacion de mediawiki, ejecute los siguientes comandos
    
      docker build -t server:16.04 .
      ./create_dockers.sh server:16.04
      echo "127.0.0.1 server01 server02 " | sudo tee -a /etc/hosts
      ssh root@server01 -p 2221 -i key.private
      ssh root@server02 -p 2222 -i key.private

instalacion de los roles


   role apache:
    
        ansible-playbook -i hosts ansible001/apache.yml
   role mysql:
    
         ansible-playbook -i hosts ansible001/mysql.yml
    
   role mediawiki:
   
        ansible-playbook -i hosts ansible001/mediawiki.yml
