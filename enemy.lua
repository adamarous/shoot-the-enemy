Enemy = Entity:extend()

function Enemy:new()
  Enemy.super.new(self, "snake.png", 325, 450, 100)
  self.height = self.image:getHeight()
end

function Enemy:update(dt)
  Enemy.super.update(self, self.speed, dt, self.x)
end

function Enemy:draw()
  Enemy.super.draw(self)
end