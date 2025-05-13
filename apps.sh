#!/bin/bash
echo 'Atualizando Sistema...'
sudo apt update && sudo apt upgrade -y
echo 'Fazendo instalação do Vim, Code, 1password'
sudo apt install curl
sudo apt install vim -y
sudo snap install code --classic
sudo snap install 1password
sudo apt install git -y
sudo apt install wget
wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo dpkg -i discord.deb
sudo snap install postman
sudo apt install mysql-client-core-8.0
echo 'Fazendo instalação do node'
# Descarregar e instalar a nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash

# Em vez de reiniciar a concha ou shell
\. "$HOME/.nvm/nvm.sh"

# Descarregar e instalar a Node.js:
nvm install 22

# Consultar a versão da Node.js:
echo 'versão do node:' 
node -v # Deveria imprimir "v22.15.0".
echo 'versão do nvm'
nvm current # Deveria imprimir "v22.15.0".
echo 'versão do npm'
# Consultar a versão da npm:
npm -v # Deveria imprimir "10.9.2".

echo 'instalação concluída'
