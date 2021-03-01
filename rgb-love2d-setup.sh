green='\033[0;32m'
default='\033[0m'

echo -e "${green}Refreshing dependency list...${default}"
sudo apt-get update
echo -e "${green}Installing dependencies...${default}"
sudo apt-get install build-essential autotools-dev automake libtool \
pkg-config libfreetype6-dev libluajit-5.1-dev libphysfs-dev libsdl2-dev \
libopenal-dev libogg-dev libvorbis-dev libmodplug-dev libmpg123-dev \
libtheora-dev

cd ~

# get love (precompiled)
wget https://raw.githubusercontent.com/tavuntu/rgb-love2d/master/love-11.3.tar.gz

# setup love and love games (demos)
tar -xf love-11.3.tar.gz

sudo ln -s /home/pi/love-11.3/src/love /usr/bin/
chmod +x __GenerateScripts.sh
echo -e "${green}You should see now a green screen in your CRT, go there please.${default}"
./__GenerateScripts.sh
mv __GenerateScripts.sh ~/RetroPie/roms/ports/Love2D/

echo "*******************************************************"
echo -e "${green}Setup completed!${default}"
echo -e "${green}Go to RGB-Pi OS options screen and do a game search, you'll find something in Ports -> Love2D${default}"
echo ''
echo 'For more info go to github.com/tavuntu/rgb-love2d'

# some cleaning
rm love-11.3.tar.gz
rm rgb-love2d-setup.sh
