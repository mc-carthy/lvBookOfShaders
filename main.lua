local singleColour = require("src.love.singleColour")
local sineWave = require("src.love.sineWave")
local screenSpaceVary = require("src.love.screenSpaceVary")
local linearSmoothing = require("src.love.linearSmoothing")
local quadraticSmoothing = require("src.love.quadraticSmoothing")
local step = require("src.love.step")
local smoothStep = require("src.love.smoothStep")
local trig = require("src.love.trig")
local colourMix = require("src.love.colourMix")
local colourShaping = require("src.love.colourShaping")
local colourHsv = require("src.love.colourHsv")
local colourHsvPolar = require("src.love.colourHsvPolar")
local rectangle = require("src.love.rectangle")
local circle = require("src.love.circle")
local circleDot = require("src.love.circleDot")
local distanceField = require("src.love.distanceField")
local polar = require("src.love.polar")
local polygon = require("src.love.polygon")
local translation = require("src.love.translation")

local shader = translation

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