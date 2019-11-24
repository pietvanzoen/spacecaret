local util = require('src/util')

local Caret = {
  width = 10,
  height = 10,
  angle = 0,
  speed = 2,
  x = 0,
  y = 0,
}

local angles = {
  right = util.radiansFromDegrees(90),
  left = util.radiansFromDegrees(270),
  up = util.radiansFromDegrees(0),
  down = util.radiansFromDegrees(180)
}

function Caret:new(options)
  local newObj = options or { }
  self.__index = self
  return setmetatable(newObj, self)
end

function Caret:points()
  local x1 = (self.width / 2)
  local y1 = 0
  local x2 = self.width
  local y2 = self.height
  local x3 = 0
  local y3 = self.height
  return {x1, y1, x2, y2, x3, y3}
end

function Caret:moveRight()
  self.angle = angles.right
  self.x = self.x + self.speed
end
function Caret:moveLeft()
  self.angle = angles.left
  self.x = self.x - self.speed
end
function Caret:moveUp()
  self.angle = angles.up
  self.y = self.y - self.speed
end
function Caret:moveDown()
  self.angle = angles.down
  self.y = self.y + self.speed
end

return Caret
