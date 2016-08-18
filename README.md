

# التنصيب
#1
sudo apt-get update

#2
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev

#3
sudo apt-get upgrade

#4
git clone https://github.com/llual.git

#5
cd llual

#6
chmod +x launch.sh

#7
./launch.sh install

#8
./launch.sh انتضر شويه وراح يطلب رقمه خليه
* * *

### Realm configuration

After you run the bot for first time, send it !id. Get your ID and stop the bot.

تفتح هاذا المسار ./data/config.lua 
  sudo_users = {
    YourID
  }

