local love = require('love')
local Caret = require('src/caret')

local caret, caretCanvas

local CARET_WIDTH = 20
local CARET_HEIGHT = 30
local CARET_SPEED = 4

function love.load()
  love.window.setTitle('SpaceCaret');
  caret = Caret:new({
    width = CARET_WIDTH,
    height = CARET_HEIGHT,
    speed = CARET_SPEED,
    x = (love.graphics.getWidth() / 2) - (CARET_WIDTH / 2),
    y = (love.graphics.getHeight() / 2) - (CARET_HEIGHT / 2)
  })
  caretCanvas = love.graphics.newCanvas(caret.width, caret.height)
  love.graphics.setCanvas(caretCanvas)
  love.graphics.clear()
  love.graphics.polygon('fill', caret:points())
  love.graphics.setCanvas()
end

function love.draw()
  local scale = 1
  local centerOffsetX = caret.width / 2
  local centerOffsetY = caret.height / 2
  love.graphics.draw(caretCanvas, caret.x, caret.y, caret.angle, scale, scale, centerOffsetX, centerOffsetY)
  love.graphics.print('x: '.. caret.x .. ', y: ' .. caret.y, 5, 5)
end

function love.update()
  if love.keyboard.isDown("right") then
    caret:moveRight()
  end
  if love.keyboard.isDown("left") then
    caret:moveLeft()
  end
  if love.keyboard.isDown("up") then
    caret:moveUp()
  end
  if love.keyboard.isDown("down") then
    caret:moveDown()
  end
end
