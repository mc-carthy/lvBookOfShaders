local trig = {}

local time = 0

trig.load = function()
    myShader = love.graphics.newShader("src/shaders/trig.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

trig.update = function(dt)
    time = time + dt
    myShader:send("time", time)
end

trig.draw = function()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return trig