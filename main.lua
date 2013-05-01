
-- SETUP PHYSICS

local physics = require "physics"
physics.start()
physics.setGravity(0, 0)
--physics.setDrawMode("hybrid")

-- iOS SETTINGS

display.setStatusBar( display.HiddenStatusBar )
--system.activate("multitouch")

local gameLayer = display.newGroup()

function load()
	

	-- BACKGROUND
	local screenX = display.contentWidth
	local screenY = display.contentHeight	
	local background = display.newGroup()
	backgroundRec = display.newRect(background, 0, 0, screenX, screenY); backgroundRec:setFillColor(26, 25, 21)
	gameLayer:insert(background)
	
	-- LAYER GROUPS
	
	local midground = display.newGroup()
	local collision = display.newGroup()
	gameLayer:insert(midground)
	gameLayer:insert(collision)
	
	-- VARIABLE TABLES
	
	local tiles = {}
	local colliders = {}
	
	-- COLLISION
	
	colliders["collider"] = display.newRect(collision, 95, 175, 66, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 95, 111, 66, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 319, 111, 66.0000000000001, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 351, 47, 18, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 415, 47, 17.9999999999999, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 415, 111, 17.9999999999999, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 415, 175, 17.9999999999999, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 319, 175, 66.0000000000001, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 463, 143, 18, 34); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 383, 223, 49.9999999999999, 50); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 367, 223, 18.0000000000001, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 271, 223, 66, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 191, 271, 98, 34); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 143, 223, 66, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 95, 223, 18, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 47, 223, 50, 50); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 47, 175, 18, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 47, 111, 18, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 47, 47, 18, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 111, 47, 18, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 191, 63, 18, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 159, 47, 50, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 271, 63, 18, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 271, 47, 50, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 223, -1, 50, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, -1, 127, 18, 66); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 270, 110, 19, 67); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 254, 110, 19, 19); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 206, 110, 19, 19); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 190, 110, 19, 67); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 190, 174, 99, 19); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 462, 174, 19, 131); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 270, 302, 211, 19.0000000000001); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 14, 302, 211, 19.0000000000001); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, -1, 190, 18, 131); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, -1, 14, 18, 115); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 462, 14, 19, 131); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, 270, -1, 211, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	colliders["collider"] = display.newRect(collision, -1, -1, 226, 18); colliders.collider.name = "collide"
	colliders.collider.isVisible = false; physics.addBody(colliders.collider, "static",  { isSensor = false, friction = 1 })
	
	-- TILES
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 200; tiles.setA_borderE.y = 56
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 200; tiles.setA_borderE.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 136
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 168
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 152
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 104
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 88
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 72
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 248
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 216
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 200
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 296
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 280
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 264
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 296
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 280
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 264
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 248
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 216
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 200
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 152
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 136
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 168
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 88
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 72
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 104
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 40
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 472; tiles.setA_borderA.y = 24
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 456; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16.0000000000001); tiles.setA_borderA.x = 440; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16.0000000000001); tiles.setA_borderA.x = 424; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 408; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 392; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16.0000000000001); tiles.setA_borderA.x = 376; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 360; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16.0000000000001); tiles.setA_borderA.x = 344; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16.0000000000001); tiles.setA_borderA.x = 328; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16.0000000000001); tiles.setA_borderA.x = 312; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 296; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 200; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 264; tiles.setA_borderA.y = 280
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 248; tiles.setA_borderA.y = 280
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 232; tiles.setA_borderA.y = 280
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 216; tiles.setA_borderA.y = 280
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 280; tiles.setA_borderA.y = 296
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 200; tiles.setA_borderA.y = 296
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 184; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 168; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 152; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 136; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 120; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 216; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 216; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 232; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 280; tiles.setA_borderA.y = 72
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 264; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 200; tiles.setA_borderA.y = 168
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 200; tiles.setA_borderA.y = 136
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 200; tiles.setA_borderA.y = 152
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 280; tiles.setA_borderA.y = 168
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 280; tiles.setA_borderA.y = 136
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 280; tiles.setA_borderA.y = 152
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 264; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 248; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 200; tiles.setA_borderA.y = 72
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 216; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 216; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 104; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 72; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 88; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 88; tiles.setA_borderA.y = 248
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 88; tiles.setA_borderA.y = 264
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 72; tiles.setA_borderA.y = 264
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 56; tiles.setA_borderA.y = 264
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 56; tiles.setA_borderA.y = 248
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 56; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 392; tiles.setA_borderA.y = 248
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 392; tiles.setA_borderA.y = 264
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 408; tiles.setA_borderA.y = 264
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 424; tiles.setA_borderA.y = 264
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 424; tiles.setA_borderA.y = 248
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 424; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 392; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 408; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 376; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 328; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 296; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16); tiles.setA_borderA.x = 312; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 184; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 168; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 152; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 152; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 136; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 56; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 56; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 104; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 120; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 152; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 136; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 104; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 120; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 376; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 360; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 328; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16); tiles.setA_borderA.x = 344; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 376; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 360; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 360; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 424; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 424; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 120; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 56; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 168; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16); tiles.setA_borderA.x = 312; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 296; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 184; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 424; tiles.setA_borderA.y = 184
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 328; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16); tiles.setA_borderA.x = 344; tiles.setA_borderA.y = 120
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 280; tiles.setA_borderA.y = 232
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 104; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 88; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 72; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 56; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 40; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16.0000000000001); tiles.setA_borderA.x = 24; tiles.setA_borderA.y = 312
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 456; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16); tiles.setA_borderA.x = 440; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 424; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 408; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 392; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 376; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16); tiles.setA_borderA.x = 344; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 360; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 15.9999999999999, 16); tiles.setA_borderA.x = 328; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16.0000000000001, 16); tiles.setA_borderA.x = 312; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 296; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 232; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 248; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 216; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 264; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 280; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 200; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 184; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 168; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 152; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 136; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 120; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 104; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 88; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 72; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 56; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 40; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 24; tiles.setA_borderA.y = 8
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 56
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 40
	
	tiles["setA_borderA"] = display.newImageRect(midground, "sprites/setA_borderA.png", 16, 16); tiles.setA_borderA.x = 8; tiles.setA_borderA.y = 24
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 472; tiles.setA_borderE.y = 8
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 408; tiles.setA_borderE.y = 248
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16.0000000000001); tiles.setA_borderE.x = 472; tiles.setA_borderE.y = 312
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16.0000000000001); tiles.setA_borderE.x = 280; tiles.setA_borderE.y = 312
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16.0000000000001); tiles.setA_borderE.x = 200; tiles.setA_borderE.y = 312
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16.0000000000001); tiles.setA_borderE.x = 8; tiles.setA_borderE.y = 312
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 8; tiles.setA_borderE.y = 8
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 280; tiles.setA_borderE.y = 56
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 280; tiles.setA_borderE.y = 120
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 200; tiles.setA_borderE.y = 280
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 280; tiles.setA_borderE.y = 280
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 280; tiles.setA_borderE.y = 184
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 72; tiles.setA_borderE.y = 248
	
	tiles["setA_borderE"] = display.newImageRect(midground, "sprites/setA_borderE.png", 16, 16); tiles.setA_borderE.x = 200; tiles.setA_borderE.y = 184
	
	-- PLAYER
	local options = { width = 16, height = 16, numFrames = 2, sheetContentWidth = 32, sheetContentHeight = 16 }
	local imageSheet = graphics.newImageSheet("player.png", options)
	local sequenceData = { name = "wak", start = 1, count = 2, time = 500 }
	local player  = display.newSprite(imageSheet, sequenceData)
	player:play()
	--local player = display.newSprite("player.png", 16, 16)
	squareShape = { -8,-8, 8,-8, 8,8, -8,8 }
	player.x = 40
	player.y = screenY/2
	physics.addBody(player, "dynamic", {density = 1, friction = .1, bounce = .5, isSensor = false, shape=squareShape})
	player.lives = 3
	player.name = "player"
	
	function touchScreen(event)
		local x = 0
		local y = 0
		if event.phase == "began" then
			if (player.x > event.x) then
				x = x - .5
			else
				x = x + .5
			end
			if (player.y > event.y) then 
				y = y - .5
			else
				y = y + .5
			end 
			player:applyLinearImpulse(x, y, player.x, player.y)
		end
	end

	Runtime:addEventListener("touch", touchScreen)
	
	--ENEMIES
	
	local blinky = display.newImageRect("blinky.png", 16, 16)
	blinky.x = screenX/2.25
	blinky.y = screenY/2.25
	physics.addBody(blinky, "dynamic", {density = 1, friction = .1, bounce = 1, isSensor = false, shape=squareShape})
	blinky.name = "blinky"
	
	local pinky = display.newImageRect("pinky.png", 16, 16)
	pinky.x = screenX/1.75
	pinky.y = screenY/1.75
	physics.addBody(pinky, "dynamic", {density = 1, friction = .1, bounce = 1, isSensor = false, shape=squareShape})
	pinky.name = "pinky"
	
	local inky = display.newImageRect("inky.png", 16, 16)
	inky.x = screenX/2
	inky.y = screenY/2
	physics.addBody(inky, "dynamic", {density = 1, friction = 1, bounce = 1, isSensor = false, shape=squareShape})
	inky.name = "inky"
	
	local clyde = display.newImageRect("clyde.png", 16, 16)
	clyde.x = screenX/2
	clyde.y = screenY/2
	physics.addBody(clyde, "dynamic", {density = 1, friction = 1, bounce = 1, isSensor = false, shape=squareShape})
	clyde.name = "clyde"
	

		
	function moveBlinky()
		local x = 0
		local y = 0
		if (blinky.x > player.x) then
			x = x - 1
		else
			x = x + 1
		end
		if (blinky.y > player.y) then 
			y = y - 1
		else
			y = y + 1
		end
		blinky:applyLinearImpulse(x, y, blinky.x, blinky.y)
		timer.performWithDelay( 250, moveBlinky)
	end
	
	function movePinky()
		local x = 0
		local y = 0
		if (pinky.x > player.x) then
			x = x - .3
		else
			x = x + .3
		end
		if (pinky.y > player.y) then 
			y = y - .3
		else
			y = y + .3
		end 
		pinky:applyLinearImpulse(x, y, pinky.x, pinky.y)
		timer.performWithDelay( 100, movePinky)
	end
	
	function moveInky()
		local x = 0
		local y = 0
		if (inky.x > player.x) then
			x = x - .3
		else
			x = x + .3
		end
		if (inky.y > player.y) then 
			y = y - .3
		else
			y = y + .3
		end 
		inky:applyLinearImpulse(x, y, inky.x, inky.y)
		timer.performWithDelay( 100, moveInky)
	end
	
	function moveClyde()
		local x = 0
		local y = 0
		if (clyde.x > player.x) then
			x = x - .1
		else
			x = x + .1
		end
		if (clyde.y > player.y) then 
			y = y - .1
		else
			y = y + .1
		end 
		clyde:applyLinearImpulse(x, y, clyde.x, clyde.y)
		timer.performWithDelay( 500, moveClyde)
	end
	
	moveBlinky()
	movePinky()
	moveInky()
	moveClyde()
	
end

load()
