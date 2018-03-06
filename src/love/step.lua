local step = {}

step.load = function()
    myShader = love.graphics.newShader("src/shaders/step.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

step.update = function(dt)
end

step.draw = function()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return step