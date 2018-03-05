------------------------------------------------------------------------------------------
--
-- main.lua
--Created by: adam
-- Created on: march 5
-- This file makes an object scroll across the screen

-----------------------------------------------------------------------------------------

-- hide the status bar

display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local movingspeed = 10

-- background image with width and height

local backgroundImage = display.newImageRect("./assets/sprites/BG.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "summer backgrouund image"

-- character image with width and height

local ninjagirl = display.newImageRect("./assets/sprites/flying.png", 193, 210)
ninjagirl.x = 0
ninjagirl.y = display.contentHeight - 1000 -- note I am using not the center but the height of the diaplay
ninjagirl.ID = "ninjagirl"

local function MoveImage(event)

	-- add the scroll speed to the x-value of the image

    ninjagirl.x = ninjagirl.x + movingspeed

    print( display.fps )  -- note this displays how fast the current refresh is

end

Runtime:addEventListener("enterFrame", MoveImage)