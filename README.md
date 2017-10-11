# Ansible_Mediawiki
Instalación de Mediawiki en su última versión en un contenedor docker usando Ansible

## MediaWiki installation has the following requirements:

    * A web server is required to serve the requested pages to the client browser.
    * PHP is required to run the software.
    * A database server is required to store the pages and site data.


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
        
        
 ![apache](https://user-images.githubusercontent.com/21178320/31434321-a426bd08-ae41-11e7-9689-c3df466c6c2f.png)
 
 
   role mysql:
    
         ansible-playbook -i hosts ansible001/mysql.yml
    
    
 ![mysql](https://user-images.githubusercontent.com/21178320/31434373-d219e118-ae41-11e7-8450-a4dd03a4d94e.png)
 
 
   role mediawiki:
   
        ansible-playbook -i hosts ansible001/mediawiki.yml
        
  
 ![mediawiki](https://user-images.githubusercontent.com/21178320/31434406-ef019352-ae41-11e7-85db-708946c66985.png)
