local tiny = require('tiny')

local drawFilter   = tiny.requireAll('isDrawSystem')
local updateFilter = tiny.rejectAll(drawFilter)

local Mixin = {}

function Mixin:draw()
  self.world:update(0, drawFilter)
end

function Mixin:update(dt)
  self.world:update(dt, updateFilter)
end

return Mixin
