local colourHsvPolar = {}

local time = 0

function colourHsvPolar.load()
    myShader = love.graphics.newShader("src/shaders/colourHsvPolar.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function colourHsvPolar.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function colourHsvPolar.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return colourHsvPolar