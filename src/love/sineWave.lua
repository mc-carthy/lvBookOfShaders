local sineWave = {}

local time = 0

function sineWave.load()
    myShader = love.graphics.newShader("src/shaders/sineWave.glsl")
end

function sineWave.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function sineWave.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return sineWave