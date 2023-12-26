Player = Entity:extend()

function Player:new()
  Player.super.new(self, "panda.png", 300, 20, 500)
end

function Player:update(dt)
  -- These two if need to be separate for the player to avoid moving to the left or right when at either limit and pressing the opposing key direction
  if love.keyboard.isDown("left") then
    self.x = self.x - self.speed * dt
  end
  if love.keyboard.isDown("right") then
    self.x = self.x + self.speed * dt
  end
  
  self.ox = (self.x + self.image:getWidth()/2) - 5
  self.oy = (self.y + self.image:getHeight()) + 5
  
  Player.super.update(self, "player", dt)
end

function Player:draw()
  Player.super.draw(self)
end

function Player:keyPressed(key)
  if key == "space" then
    table.insert(listOfBullets, Bullet(self.ox, self.oy))
  end
end