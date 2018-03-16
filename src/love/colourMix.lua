local colourMix = {}

local time = 0

function colourMix.load()
    myShader = love.graphics.newShader("src/shaders/colourMix.glsl")
end

function colourMix.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function colourMix.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return colourMix