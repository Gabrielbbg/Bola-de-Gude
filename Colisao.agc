collision:

	if GetSpriteCollision (sprite, buraco) = 1
		PlaySound (sonburaco, 100)
		if estado = 2
			SetSpritePosition (sprite, 570, 300)
		endif
		
		if estado = 5 or estado = 8
			SetSpritePosition (sprite, 300, 570)
		endif
		
		caiu = caiu + 1
		
		if GetSpriteColorRed (sprite) = 102 and GetSpriteColorGreen (sprite) = 255 and GetSpriteColorBlue (sprite) = 255
			contador1 = contador1 + 1000
			total1 = (contador1 / tentativa1) + total1
		endif
		
		SetSpriteColor (sprite, 255, 102, 204, 255)
		SetSpriteVisible (bolas, 0)
		
	endif
	
	if GetSpriteCollision (sprite, outro) = 1
		PlaySound (sonburaco, 100)
		if estado = 2
			SetSpritePosition (sprite, 570, 300)
		endif
		
		if estado = 5 or estado = 8
			SetSpritePosition (sprite, 300, 570)
		endif
		
		caiu = caiu + 1
		
		if GetSpriteColorRed (sprite) = 255 and GetSpriteColorGreen (sprite) = 102 and GetSpriteColorBlue (sprite) = 204
			contador2 = contador2 + 1000
			total2 = (contador2 / tentativa2) + total2
		endif
	
		SetSpriteColor (sprite, 255, 102, 204, 255)
		SetSpriteVisible (bolas, 0)
		
	endif

	
	x2# =(getVirtualWidth())
	y2# =(getVirtualHeight())
	ret = getSpriteInBox(sprite,35,35,568,568)
	
	if repitir = 0
		if ret = 0
			PlaySound (batidabola)
			repitir = 1
		endif
	endif
	
	if ret = 1
		repetir = 0
	endif
return:
