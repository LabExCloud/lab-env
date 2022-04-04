#!/bin/bash 

git clone https://github.com/LabExCloud/webapp.git
git clone https://github.com/LabExCloud/backend.git


cd backend
pip install -r Requirements.txt
python3 manage.py makemigrations
python3 manage.py migrate

cd ../webapp
npm install

cd ..

echo "run backend using: python3 manage.py runserver 0.0.0.0:8000"
echo "run webapp using: npm run serve"

ls
