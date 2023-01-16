#!/bin/bash         

echo "Comenzando Configuracion"
sudo apt-get update
sudo apt-get -y upgrade
python3 -V
sudo apt-get install -y python3-pip
sudo apt-get install build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python3-venv
read -p 'Ingrese de entorno: ' uservar
#mkdir directory_env
#cd ./directory_env
echo "Creando entorno $uservar"
python3 -m venv $uservar
source $uservar/bin/activate
cd ./$uservar && pip install -r ../requirements.txt && touch main.py
echo "para activar el entorno y comenzar a desarrollar, ingrese ' source $uservar/bin/activate && cd ./$uservar'. "