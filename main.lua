local ripple = require 'ripple'

local testTagA = ripple.newTag()
local testTagB = ripple.newTag()
testTagB:_setVolume(.5)
local testSound = ripple.newSound('boop.ogg', {testTagA, testTagB})

function love.keypressed(key)
  if key == 'p' then testSound:play() end
  if key == 's' then testSound:stop() end
  if key == '5' then testTagA:_setVolume(.5) end

  if key == 'escape' then love.event.quit() end
end

function love.draw()
  love.graphics.print(#testSound._instances)
end
