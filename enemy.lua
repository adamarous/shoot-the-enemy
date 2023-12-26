Enemy = Entity:extend()

function Enemy:new()
  Enemy.super.new(self, "snake.png", 325, 450, 100)
end

function Enemy:update(dt)
  Enemy.super.update(self, "enemy", dt)
end

function Enemy:draw()
  Enemy.super.draw(self)
end