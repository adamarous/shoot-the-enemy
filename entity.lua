Entity = Object:extend()

function Entity:new(image, x, y, speed)
  self.image = love.graphics.newImage(image)
  self.x = x
  self.y = y
  self.speed = speed
  self.width = self.image:getWidth()
  self.height = self.image:getHeight()
end

function Entity:update(id, dt)
  if id == "enemy" then
    self.x = self.x + self.speed * dt
    enemyRecording = self.x
  elseif id == "bullet" then
    self.y = self.y + self.speed * dt
    bulletRecordingY = self.y
  end
  
  local window_width = love.graphics.getWidth()
  
  if id == "enemy" then
    if self.x < 0 then
      self.x = 0
      self.speed = -self.speed
    elseif self.x + self.width > window_width then
      self.x = window_width - self.width
      self.speed = -self.speed
    end
  elseif id == "player" then
    if self.x < 0 then
      self.x = 0
    elseif self.x + self.width > window_width then
      self.x = window_width - self.width
    end
  end
end

function Entity:draw()
  love.graphics.draw(self.image, self.x, self.y)
end