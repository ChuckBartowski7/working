
local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
--qui sotto mettiamo tutte le dichiarazioni alle variabili
local background
local playbutton


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
--funzioni
local function cambiaScena ()
  composer.gotoScene( "gioco" ) --si possono aggiungere effetti
end

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen
  background = display.newImageRect( sceneGroup, "sfondo.png", 800, 600 ) --1024x600
  background.x = display.contentCenterX-15
  background.y = display.contentCenterY-65
  sceneGroup:insert(background)
  
  
 -- playButton = display.newText( sceneGroup, "Play", display.contentCenterX, 500, native.systemFont, 60 )
 -- playButton:setFillColor( 0, 0, 0 )
 -- sceneGroup:insert(playButton)

 
 -- playButton:addEventListener( "tap", cambiaScena )


end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen

	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen

	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
