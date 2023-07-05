python -m pip install --upgrade pip
pip install -r requirements.txt
python hello_app/app.py &
ANSW=$(curl http://127.0.0.1:5000/)
if [ "$ANSW" != "2023-07-05" ]; then
echo "Neudacha"
else
echo "Udacha"
fi
