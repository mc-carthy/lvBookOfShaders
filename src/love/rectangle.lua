local rectangle = {}

local time = 0

function rectangle.load()
    myShader = love.graphics.newShader("src/shaders/rectangle.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function rectangle.update(dt)
    time = time + dt
    -- myShader:send("time", time)
end

function rectangle.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return rectangle