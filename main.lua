local singleColour = require("src.love.singleColour")
local sineWave = require("src.love.sineWave")
local screenSpaceVary = require("src.love.screenSpaceVary")

function love.load()
    screenSpaceVary.load()
end

function love.update(dt)
    screenSpaceVary.update(dt)
end

function love.draw()
    screenSpaceVary.draw()
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end