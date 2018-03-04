local linearSmoothing = {}

linearSmoothing.load = function()
    myShader = love.graphics.newShader("src/shaders/linearSmoothing.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

linearSmoothing.update = function(dt)
end

linearSmoothing.draw = function()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return linearSmoothing