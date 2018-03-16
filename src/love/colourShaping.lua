local colourShaping = {}

local time = 0

function colourShaping.load()
    myShader = love.graphics.newShader("src/shaders/colourShaping.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function colourShaping.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function colourShaping.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return colourShaping