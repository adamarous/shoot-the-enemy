Entity = Object:extend()

function Entity:new(image, x, y, speed)
  self.image = love.graphics.newImage(image)
  self.x = x
  self.y = y
  self.speed = speed
  self.width = self.image:getWidth()
end

function Entity:update(s, dt, x, y)
  if x ~= nil then
    self.x = self.x + self.speed * dt
  elseif y ~= nil then
    self.y = self.y + self.speed * dt
  end
  
  local window_width = love.graphics.getWidth()
  
  if s ~= nil then
    if self.x < 0 then
      self.x = 0
      self.speed = -self.speed
    elseif self.x + self.width > window_width then
      self.x = window_width - self.width
      self.speed = -self.speed
    end
  else
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