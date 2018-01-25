local class = require('hump.class')

local Text = require('entity.text')

local Entity = class()

function Entity:init()
  local font = love.graphics.newFont(36)
  local text = Text('Begin', font)
  local w, h = love.graphics.getCanvas():getDimensions()

  text.x = w - text.w
  text.y = h - text.h

  self:include(text)
end

return Entity
