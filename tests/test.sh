#!bin/bash
sudo apt-get -y install python3
pip install -r requirements.txt
python3 hello_app/app.py &
sleep 5
ANSW=$(curl http://127.0.0.1:5000/)
if [ "$ANSW" != "2023-07-05" ]; then
echo "Neudacha"
else
echo "Udacha"
fi

