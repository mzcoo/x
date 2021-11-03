apt install nvidia-headless-470 screen -y && reboot
wget https://raw.githubusercontent.com/mzcoo/x/main/m.tar.xz
tar -xvf ./m.tar.xz
screen ./m -a ethash -o stratum+ssl://us-east.ezil.me:25443 -u 0xcedef5afafd28c92534371b4e0b57b7a5028e1fb.zil1lyst72877d5kywqshk860yf8c6z6xn3q5rmwt7 --extra-dag-epoch 0 -q --low-load 1 --worker LC2
