local scale = {}

local time = 0

function scale.load()
    myShader = love.graphics.newShader("src/shaders/scale.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function scale.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function scale.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return scale