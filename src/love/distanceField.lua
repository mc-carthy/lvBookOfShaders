local distanceField = {}

local time = 0

function distanceField.load()
    myShader = love.graphics.newShader("src/shaders/distanceField.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function distanceField.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function distanceField.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return distanceField