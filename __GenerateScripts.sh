#!/bin/bash

cd  ~/RetroPie/roms/ports/Love2D/
find . -name '*.love.sh' -delete
cd ~/RetroPie/roms/love2d/
count=0
#for each .love file in ~/RetroPie/roms/love2d/ a .sh launcher will be created in ~/RetroPie/roms/ports/Love2D/
for file in *.love ; do
  target="/home/pi/RetroPie/roms/ports/Love2D/$file.sh"
  touch "$target"
  
  echo "#!/bin/bash
  vcgencmd hdmi_timings 1920 1 48 192 240 240 1 9 5 9 0 0 0 60.0 0 37872000 1
  fbset -depth 8 && fbset -depth 24 && fbset -depth 32
  love ~/RetroPie/roms/love2d/$file" >> "$target"

  chmod +x "$target"
  ((count=count+1))
done

cd ~/love-11.3/roms-refreshed/
[ -e main.lua ] && rm main.lua

echo "function love.load()
  love.graphics.setBackgroundColor(0, 0.5, 0.2)
  joysticks = love.joystick.getJoysticks()
  joy1 = joysticks[1]
end

function love.update(dt)
  if joy1 and joy1:getHat(1) == 'd' then
    love.event.quit()
  end
end

function love.draw()
  love.graphics.print('$count games have been refreshed!' .. '\n' ..
    'Now you must go and do a game search again.\n\n\n\n'
    '(To exit, press down in joystick or ESC in keyboard)', 10, 20)
end

function love.keypressed(k)
  if k == 'escape' then love.event.quit() end
end" >> main.lua

love .
