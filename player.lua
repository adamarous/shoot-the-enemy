Player = Entity:extend()

function Player:new()
  Player.super.new(self, "panda.png", 300, 20, 500)
end

function Player:update(dt)
  if love.keyboard.isDown("left") then
    self.x = self.x - self.speed * dt
  elseif love.keyboard.isDown("right") then
    self.x = self.x + self.speed * dt
  end
  
  Player.super.update(self)
end

function Player:draw()
  Player.super.draw(self)
end

function Player:keyPressed(key)
  if key == "space" then
    table.insert(listOfBullets, Bullet(self.x, self.y))
  end
end