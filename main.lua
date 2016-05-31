local androidSheet, sequenceData, androidSprite, waveRight, waveLeft 
local walk, run, courtsey, jump, waverightText, waveleftText, walkText 
local runText, courtseyText, jumpText

local w = display.contentWidth

androidTable = { 
	width = 329,
	height = 241, 
	numFrames = 30, 
	sheetContentHeight = 723, 
	sheetContentWidth = 3290
}
	
androidSheet = graphics.newImageSheet( "android_sheet.png", androidTable )

sequenceData = {
	{ 
	name = "waveright",
	start = 1,
	count = 10,
	time = 800,
	loopDirection = "bounce", 
	loopCount = 1 
	},
	{ 
	name = "waveleft",
	start = 11,
	count = 10,
	time = 800,
	loopDirection = "bounce", 
	loopCount = 1 
	},
	{ 
	name = "walk",
	frames = { 1, 21, 22, 23, 22, 21, 1, 24, 25, 26, 25, 24 },
	time = 1000 
	},
	{ 
	name = "run",
	frames = { 1, 21, 22, 23, 22, 21, 1, 24, 25, 26, 25, 24 },
	time = 600 
	},
	{ 
	name = "courtsey",
	frames = { 1, 27, 28, 29, 30 }, 
	time = 400 ,
	loopDirection = "bounce", 
	loopCount = 1 
	}
}
	
androidSprite = display.newSprite( androidSheet, sequenceData ) 
androidSprite.x = w/2
androidSprite.y = 300
androidSprite.xScale, androidSprite.yScale = 2, 2

function waveRight(event)
	androidSprite:setSequence("waveright")
	androidSprite:play()
end

function waveLeft(event)
	androidSprite:setSequence("waveleft")
	androidSprite:play()
end

function walk(event)
	androidSprite:setSequence("walk")
	androidSprite:play()
end

function run(event)
	androidSprite:setSequence("run")
	androidSprite:play()
end

function courtsey(event)
	androidSprite:setSequence("courtsey")
	androidSprite:play()
end

function jump(event)
	androidSprite:setSequence("courtsey")
	androidSprite:play()
	transition.to(androidSprite, {y = androidSprite.y-50, time= 200})
	transition.to(androidSprite,{y=androidSprite.y, time =200, delay = 200})
end


waverightText = display.newText("Wave Right Arm", w/2, 700, Arial, 35)
waveleftText = display.newText("Wave Left Arm", w/2, 750, Arial, 35)
walkText = display.newText("Walk", w/2, 800, Arial, 35)
runText = display.newText("Run", w/2, 850, Arial, 35)
courtseyText = display.newText("Courtsey", w/2, 900, Arial, 35)
jumpText = display.newText("Jump", w/2, 950, Arial, Arial, 35)


waverightText:addEventListener("tap", waveRight)
waveleftText:addEventListener("tap", waveLeft)
walkText:addEventListener("tap", walk)
runText:addEventListener("tap", run)
courtseyText:addEventListener("tap", courtsey)
jumpText:addEventListener("tap", jump)
