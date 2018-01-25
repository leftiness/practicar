local Gamestate = require('hump.gamestate')

local boot = require('state.boot')

function love.load()
  Gamestate.registerEvents()
  Gamestate.switch(boot)
end
