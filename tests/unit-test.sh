#!/bin/bash
python -m pip install --upgrade pip
pip install -r ../requirements.txt
python ../hello_app/app.py &
response=$(curl http://127.0.0.1:5000/)
expected_response="2023-07-05"

if [ "$response" != "$expected_response" ]; then
  echo "Neudacha"
else
  echo "Udacha"
fi
