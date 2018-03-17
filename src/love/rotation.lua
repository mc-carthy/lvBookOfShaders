local rotation = {}

local time = 0

function rotation.load()
    myShader = love.graphics.newShader("src/shaders/rotation.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function rotation.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function rotation.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return rotation