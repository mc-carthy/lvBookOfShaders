local screenSpaceVary = {}

screenSpaceVary.load = function()
    myShader = love.graphics.newShader("src/shaders/screenSpaceVary.glsl")
    myShader:send("screen_width", love.graphics.getWidth())
    myShader:send("screen_height", love.graphics.getHeight())
end

screenSpaceVary.update = function(dt)
    local mouse_x, mouse_y = love.mouse.getPosition()
    myShader:send("mouse_x", mouse_x)
    myShader:send("mouse_y", mouse_y)
end

screenSpaceVary.draw = function()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return screenSpaceVary