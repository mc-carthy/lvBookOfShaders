local polygon = {}

local time = 0

function polygon.load()
    myShader = love.graphics.newShader("src/shaders/polygon.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function polygon.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function polygon.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return polygon