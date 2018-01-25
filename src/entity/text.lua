local class = require('hump.class')

local Entity = class()

function Entity:init(text, font, x, y)
  self.drawable  = love.graphics.newText(font, text)
  self.w, self.h = self.drawable:getDimensions()

  self.x = x or 0
  self.y = y or 0
end

return Entity
