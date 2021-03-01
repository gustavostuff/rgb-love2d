#!/bin/bash

cd  ~/RetroPie/roms/ports/Love2D/
find . -name '*.love.sh' -delete
cd ~/RetroPie/roms/love2d/
count=0
#for each .love file in ~/RetroPie/roms/love2d/ a .sh launcher will be created in ~/RetroPie/roms/ports/Love2D/
for file in *.love ; do
  target="/home/pi/RetroPie/roms/ports/Love2D/$file.sh"
  touch "$target"
  echo "#!/bin/bash" >> "$target"
  echo "love ~/RetroPie/roms/love2d/$file" >> "$target"
  chmod +x "$target"
  ((count=count+1))
done

cd ~/love-11.3/roms-refreshed/
[ -e main.lua ] && rm main.lua

echo "function love.load()
  love.graphics.setBackgroundColor(0, 0.5, 0.2)
end
function love.draw()
  love.graphics.print('$count games have been refreshed!' .. '\n'
    .. 'Press button 1 to exit (or ESC)', 10, 20)
end
function love.joystickpressed(joy, btn)
  if btn == 1 then love.event.quit() end
end
function love.keypressed(k)
  if k == 'escape' then love.event.quit() end
end" >> main.lua

love .
