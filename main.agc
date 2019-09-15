SetErrorMode(2)
SetGenerateMipmaps(0)
// set window properties
SetWindowTitle( "Bola de Gude" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution (600, 620)
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts



#include "Musicas.agc"
#include "Move.agc"
#include "Fisica.agc"
#include "Colisao.agc"
#include "Estados.agc"
#include "Imagens.agc"

gosub Sprites

gosub botoes

//Textos

CreateText (1, "Bola de Gude")
SetTextPosition (1, 145, 135)
SetTextSize (1, 70)
SetTextColor (1, 255, 51, 0, 255)

CreateText (2, "Fase 1")
SetTextPosition (2, 270, 275)
SetTextSize (2, 40)

CreateText (3, "Score: " + str(total))
SetTextPosition (3, 510, 600)
SetTextSize (3, 20)

CreateText (4, "Pontuação: " + str(total))
SetTextPosition (4, 230, 285)
SetTextSize	(4, 20)
SetTextDepth (4, 7)

CreateText (5, "Fase 2")
SetTextPosition (5, 270, 275)
SetTextSize (5, 40)

CreateText (6, "Fase 3")
SetTextPosition (6, 270, 275)
SetTextSize (6, 40)

tempo = 1

gosub sons

estado = 0
tempo = 0
repitir = 0

roda1 = 360

SetPhysicsGravity ( GetDirectionX(), GetDirectionY())

do
	if estado = 0
		gosub estado0
	endif
	
	if estado = 1
		gosub estado1
	endif
	
	//SetPhysicsDebugOn()
	
	if estado = 2
		gosub estado2
	endif
	
	if estado = 25
		gosub estado25
	endif
	
	if estado = 3
		gosub estado3
	endif
	
	if estado = 4
		gosub estado4
	endif
	
	if estado = 5
		gosub estado5
	endif
	
	if estado = 55
		gosub estado55
	endif
	
	if estado = 6
		gosub estado6
	endif
	
	if estado = 7
		gosub estado7
	endif
	
	if estado = 8
		gosub estado8
	endif
	
	if estado = 85
		gosub estado85
	endif
	
	if estado = 9
		gosub estado9
	endif

	sync()
loop
