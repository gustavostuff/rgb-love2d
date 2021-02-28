[![logo-rgb-love2d.png](https://i.postimg.cc/8C4cJNzr/logo-rgb-love2d.png)](https://postimg.cc/KKKxCXLZ)

## LÖVE support for RGB-Pi OS

### Installation

* Connect to your Raspberry Pi via SSH
* Run:

```
wget https://raw.githubusercontent.com/tavuntu/rgb-love2d/master/rgb-love-11.3-setup.sh && chmod +x rgb-love-11.3-setup.sh && ./rgb-love-11.3-setup.sh
```
* Follow the instructions and enjoy! (Some demos will be placed in Ports)

---

## Adding new games

Games (.love files) should be placed in ~/RetroPie/roms/love2d/ and everytime new ones are added, you must do:

* Run __RefreshRoms (from RGB-Pi OS, in Ports)
* Do a game search again

When developing a game, consider that, inside RGB-Pi OS, it will run at 320x240.

### Some Links

* [RGB-Pi](https://www.rgb-pi.com/)
* [LÖVE](https://love2d.org/)
* [Raspberry Pi](https://www.raspberrypi.org/)
* [RetroPie](https://retropie.org.uk/)
