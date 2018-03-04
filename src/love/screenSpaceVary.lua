local screenSpaceVary = {}

screenSpaceVary.load = function()
    myShader = love.graphics.newShader("src/shaders/screenSpaceVary.glsl")
    myShader:send("screen_width", love.graphics.getWidth())
    myShader:send("screen_height", love.graphics.getHeight())
end

screenSpaceVary.update = function(dt)

end

screenSpaceVary.draw = function()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return screenSpaceVary