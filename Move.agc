movimento:
	menosx = x# - GetSpriteXByOffset(sprite)
	menosy = y# - GetSpriteYByOffset(sprite)
	potx = pow(menosx,2)
	poty = pow(menosy,2)
	modulo = sqrt(potx+poty)
	
	if modulo > 300
		modulo = 300
	endif

	gosub fase
	
	gosub bolavelocidade
	
	SetSpriteVisible (seta, 0)

	if velocidade = 0	
		SetSpriteVisible (seta, 1)

		angle# = ATanFull(x# - GetSpriteXByOffset(sprite), y# - GetSpriteYByOffset(sprite))
		SetSpriteAngle(seta, angle# + 90)
	
		SetSpriteOffset (seta, 80, 14)
		
		escala = (modulo * 45) / 300
	
		SetSpriteColor (seta, modulo - escala, (modulo - escala) - 255, 0, 255)
		
		if GetPointerPressed() = 1
			velocidadex = (x# - x) * modulo
			velocidadey = (y# - y) * modulo
			velox = velocidadex
			veloy = velocidadey
			
			SetSpritePhysicsOn (sprite, 2)
			SetSpritePhysicsImpulse (sprite, x#, y#, velocidadex, velocidadey)
			
			if GetSpriteColorRed (sprite) = 102 and GetSpriteColorGreen (sprite) = 255 and GetSpriteColorBlue (sprite) = 255
				tentativa1 = tentativa1 + 1 
			endif
			
			if GetSpriteColorRed (sprite) = 255 and GetSpriteColorGreen (sprite) = 102 and GetSpriteColorBlue (sprite) = 204
				tentativa2 = tentativa2 + 1
			endif
		endif
	endif
	
	if GetSpriteVisible (gira) = 1
		roda = roda + 2
		if roda > 360
			roda = 0
		endif
				
		SetSpriteAngle(gira, roda )
	endif
		
	if GetSpriteVisible (gira1) = 1
		roda1 = roda1 - 2
		if roda1 > 360
			roda1 = 0
		endif
		
		SetSpriteAngle (gira1, roda1)
	endif

return:
