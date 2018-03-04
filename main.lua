local singleColour = require("src.love.singleColour")
local sineWave = require("src.love.sineWave")
local screenSpaceVary = require("src.love.screenSpaceVary")
local linearSmoothing = require("src.love.linearSmoothing")
local quadraticSmoothing = require("src.love.quadraticSmoothing")

local shader = quadraticSmoothing

function love.load()
    shader.load()
end

function love.update(dt)
    shader.update(dt)
end

function love.draw()
    shader.draw()
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end