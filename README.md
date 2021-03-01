[![logo-rgb-love2d.png](https://i.postimg.cc/8C4cJNzr/logo-rgb-love2d.png)](https://postimg.cc/KKKxCXLZ)

## LÖVE support for RGB-Pi OS

### Installation

* Your Raspberry Pi should be connected to the internet
* Connect to your Raspberry Pi via SSH/Putty from another computer
* Run:

```
wget https://raw.githubusercontent.com/tavuntu/rgb-love2d/master/rgb-love2d-setup.sh && chmod +x rgb-love2d-setup.sh && ./rgb-love2d-setup.sh
```
* Follow the instructions and enjoy! (Some demos will be placed in Ports -> Love2D)

---

### Adding new games

Games (.love files) should be placed in ~/RetroPie/roms/love2d/ and, after doing that, you must:

1. Run **__GenerateScripts** (from RGB-Pi OS, in Ports -> Love2D)
2. Do a game search again

Note: if you're just replacing 1 (or more) .love file with a new one (but same name), you're all set.

### Notes for developers

* Unlike the [RGB-Quake](https://github.com/tavuntu/rgb-quake) project, this one has no direct integration with RetroArch, so you should have in mind:

  * A way to exit the game (usually with ```love.event.quit()```) is needed in order to return to the RGB-Pi UI
  * Global mapping for Joysticks is not there (yet)
  * For every ```.love``` in ```~/RetroPie/roms/love2d/```, __GenerateScripts creates a ```.love.sh``` file in ```~/RetroPie/roms/ports/Love2D/```:

```shell
#!/bin/bash
love ~/RetroPie/roms/love2d/<your_game>.love
```
* When developing a game, consider that it will run at 320x240 in RGB-Pi OS (there is no **hdmi_timings** swap so it uses the same as in ```/boot/config.txt```). This may change in future versions of this setup.

### Some Links

* [RGB-Pi](https://www.rgb-pi.com/)
* [LÖVE](https://love2d.org/)
* [Raspberry Pi](https://www.raspberrypi.org/)
* [RetroPie](https://retropie.org.uk/)

---

 :information_source: In order to get a more straight forward solution, a RetroArch core for LÖVE is currently being discussed!
