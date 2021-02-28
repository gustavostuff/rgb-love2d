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

### Adding new games

Games (.love files) should be placed in ~/RetroPie/roms/love2d/ and everytime new ones are added, you must do:

1. Run __RefreshRoms (from RGB-Pi OS, in Ports)
2. Do a game search again

### Considerations

* Unlike the [RGB-Quake](https://github.com/tavuntu/rgb-quake) project, this one has no direct integration with RetroArch, so you should have in mind:

  * A way to exit the game with (usually with ```love.event.quit()```) is needed in order to return to the RGB-Pi UI
  * Because of the above, a way to globally map Joysticks is needed (not ready yet)
  * **__RefreshRoms** creates a ```<lovegame>.love.sh``` script (in ```~/RetroPie/roms/ports/Love2D/```) for every ```<lovegame>.love``` (in ```~/RetroPie/roms/love2d/```), containing the following:

```shell
#!/bin/bash
love ~/RetroPie/roms/love2d/<lovegame>
```
* When developing a game, consider that, inside RGB-Pi OS, it will run at 320x240 (there is no **hdmi_timings** swap so it uses the same as in ```/boot/config.txt```)

### Some Links

* [RGB-Pi](https://www.rgb-pi.com/)
* [LÖVE](https://love2d.org/)
* [Raspberry Pi](https://www.raspberrypi.org/)
* [RetroPie](https://retropie.org.uk/)
