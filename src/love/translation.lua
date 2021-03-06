local translation = {}

local time = 0

function translation.load()
    myShader = love.graphics.newShader("src/shaders/translation.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function translation.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function translation.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return translation