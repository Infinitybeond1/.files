-- At first, you need to require tym module
local tym = require('tym')

-- set individually
tym.set('width', 100)

tym.set('font', 'scientifica 18')

-- set by table
tym.set_config({
  shell = '/bin/zsh',
  cursor_shape = 'underline',
  autohide = true,
  -- padding_horizontal = 25,
  -- padding_vertical = 25,
})
