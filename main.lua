local singleColour = require("src.love.singleColour")

function love.load()
    singleColour.load()
end

function love.update(dt)
    singleColour.update()
end

function love.draw()
    singleColour.draw()
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end