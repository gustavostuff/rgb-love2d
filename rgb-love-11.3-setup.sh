echo 'Installing dependencies...'
sudo apt-get install build-essential autotools-dev automake libtool \
pkg-config libfreetype6-dev libluajit-5.1-dev libphysfs-dev libsdl2-dev \
libopenal-dev libogg-dev libvorbis-dev libmodplug-dev libmpg123-dev \
libtheora-dev

# get specific version
wget https://raw.githubusercontent.com/tavuntu/rgb-love2d/master/love-11.3.tar.gz

# build and compile
tar -xf love-11.3.tar.gz
rm love-11.3.tar.gz
ln -s love-11.3/love /usr/bin/
echo 'Love2D is now available by just typing the command love'