local circleDot = {}

local time = 0

function circleDot.load()
    myShader = love.graphics.newShader("src/shaders/circleDot.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function circleDot.update(dt)
    time = time + dt
    -- myShader:send("time", time)
end

function circleDot.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return circleDot