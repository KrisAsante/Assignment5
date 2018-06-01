-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by: Chris Asante
--Created on: May 2018
-----------------------------------------------------------------------------------------

local background = display.newImageRect( './assets/sprites/background.jpg', 2048, 1536 )
background.x = display.contentCenterX
background.y = display.contentCenterY
background.id = "background"

local Baku = display.newImageRect("./assets/sprites/character.png", 700, 900)
Baku.x = 600
Baku.y = display.contentHeight - 350 
Baku.ID = "Baku"


for loopCounter = 1, 50 do 
    print(loopCounter) 
    Baku.x = Baku.x + 10
end

local liltay = display.newImageRect("./assets/sprites/enemy.png", 500, 700)
liltay.x = 350
liltay.y = display.contentHeight - 350 
liltay.ID = "liltay"

local function liltayTouch( event )

    liltay.alpha = 0.0
    return true
end

liltay:addEventListener( "touch", liltayTouch )

local explosion = display.newImageRect("./assets/sprites/fire.png", 700, 700)
explosion.x = 1700
explosion.y = display.contentHeight - 1100
explosion.ID = "explosion"

local explosionSound

local function explosionTouch( event )
    
    local explosionSound = audio.loadSound( "./assets/sound/8bit_bomb_explosion.wav" )
    audio.play( explosionSound) 
    print (" explosion ")
    return true
end

explosion:addEventListener( "touch", explosionTouch )
