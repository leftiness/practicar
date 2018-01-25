local class = require('hump.class')
local tiny  = require('tiny')

local Text  = require('entity.boot.text')
local Mixin = require('mixin.state')
local Draw  = require('system.draw')

local State = class():include(Mixin)

function State:init()
  self.world = tiny.world(Draw())

  self.world:add(Text())
end

function State:boot()
  love.event.quit()
end

function State:mousepressed()
  self:boot()
end

function State:keypressed()
  self:boot()
end

function State:touchpressed()
  self:boot()
end

return State
