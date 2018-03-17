local polar = {}

local time = 0

function polar.load()
    myShader = love.graphics.newShader("src/shaders/polar.glsl")
    myShader:send("resolution", { love.graphics.getWidth(), love.graphics.getHeight() })
end

function polar.update(dt)
    time = time + dt
    myShader:send("time", time)
end

function polar.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
end

return polar