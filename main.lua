function love.load()
    myShader = love.graphics.newShader("src/singleColour.glsl")
end

function love.update(dt)

end

function love.draw()
    love.graphics.setShader(myShader)
    love.graphics.rectangle("fill", 50, 50, 200, 200)
    love.graphics.setShader()
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end