green='\033[0;32m'
default='\033[0m'

echo 'Installing dependencies...'
sudo apt-get install build-essential autotools-dev automake libtool \
pkg-config libfreetype6-dev libluajit-5.1-dev libphysfs-dev libsdl2-dev \
libopenal-dev libogg-dev libvorbis-dev libmodplug-dev libmpg123-dev \
libtheora-dev

# get love (precompiled)
wget https://raw.githubusercontent.com/tavuntu/rgb-love2d/master/love-11.3.tar.gz

# setup love and love games (demos)
tar -xf love-11.3.tar.gz
rm love-11.3.tar.gz
sudo ln -s /home/pi/love-11.3/src/love /usr/bin/
chmod +x __RefreshRoms
cp __RefreshRoms ~/RetroPie/roms/ports/Love2D/
./__RefreshRoms

echo "*******************************************************"
echo "${green}Setup completed!${default}"
echo "${green}Go to RGB-Pi OS options screen and do a game search, you'll find something in Ports${default}"
