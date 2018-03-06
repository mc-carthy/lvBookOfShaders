local smoothStep = {}

smoothStep.load = function()
    myShader = love.graphics.newShader("src/shaders/smoothStep.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

smoothStep.update = function(dt)
end

smoothStep.draw = function()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return smoothStep