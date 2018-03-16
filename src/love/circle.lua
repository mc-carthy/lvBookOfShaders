local circle = {}

local time = 0

function circle.load()
    myShader = love.graphics.newShader("src/shaders/circle.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function circle.update(dt)
    time = time + dt
    -- myShader:send("time", time)
end

function circle.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return circle