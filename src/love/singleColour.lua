local singleColour = {}

singleColour.load = function()
    myShader = love.graphics.newShader("src/shaders/singleColour.glsl")
end

singleColour.update = function(dt)

end

singleColour.draw = function()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return singleColour