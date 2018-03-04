local quadraticSmoothing = {}

quadraticSmoothing.load = function()
    myShader = love.graphics.newShader("src/shaders/quadraticSmoothing.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

quadraticSmoothing.update = function(dt)
end

quadraticSmoothing.draw = function()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return quadraticSmoothing