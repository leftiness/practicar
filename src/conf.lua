local PRACTICAR = 'practicar'

function love.conf(t)
  t.identity     = PRACTICAR
  t.window.title = PRACTICAR

  t.modules.joystick = false
  t.modules.math     = false
  t.modules.physics  = false
  t.modules.video    = false
end
