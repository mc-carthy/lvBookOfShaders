local singleColour = require("src.love.singleColour")
local sineWave = require("src.love.sineWave")

function love.load()
    sineWave.load()
end

function love.update(dt)
    sineWave.update(dt)
end

function love.draw()
    sineWave.draw()
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end