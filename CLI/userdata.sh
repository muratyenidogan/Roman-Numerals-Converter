#! /bin/bash

yum update -y
yum install python3 -y
yum install python3-pip -y
pip3 install flask
yum install git -y
FOLDER="https://raw.githubusercontent.com/muratyenidogan/Roman-Numerals-Converter/main/templates"
cd /home/ec2-user
wget -P templates ${FOLDER}/index.html
wget -P templates ${FOLDER}/result.html
wget https://raw.githubusercontent.com/muratyenidogan/Roman-Numerals-Converter/main/roman-numerals-converter-app.py
python3 roman-numerals-converter-app.py