estado0:
	marcado = 0
	
	SetSpriteVisible (inicial, 1)
	SetSpriteVisible (backdrop, 0)
	SetSpriteVisible (backdrop1, 0)
	SetSpriteVisible (backdrop2, 0)
	SetSpriteVisible (Buraco, 0)
	SetSpriteVisible (sprite, 0)
	SetSpriteVisible (bolas, 0)
	SetSpriteVisible (escuro, 0)
	SetSpriteVisible (estrela, 0)
	SetSpriteVisible (seta, 0)
	SetSpriteVisible (bloco, 0)
	SetSpriteVisible (bloco2, 0)
	SetSpriteVisible (outro, 0)
	SetSpriteVisible (gira, 0)
	SetSpriteVisible (gira1, 0)
	
	SetTextVisible (1, 1)
	SetTextVisible (2, 0)
	SetTextVisible (3, 0)
	SetTextVisible (4, 0)
	SetTextVisible (5, 0)
	SetTextVisible (6, 0)
	
	SetSpritePhysicsOff (bloco)
	SetSpritePhysicsOff (bloco2)
	if GetSpriteExists (estrela1) = 1
		SetSpriteVisible (estrela1, 0)
	endif
	
	if GetSpriteExists (estrela2) = 1
		SetSpriteVisible (estrela2, 0)
	endif
	
			if GetMusicPlayingOGG (music) = 0
				StopMusicOGG (music3)
				StopMusicOGG (music4)
				PlayMusicOGG (music)
			endif
	
	if tempo = 0
		
		if GetVirtualButtonExists (inicio) = 0
			gosub addbotoes
		endif
		
	endif
	
	SetVirtualButtonVisible (inicio, 1)
	SetVirtualButtonVisible (fora, 1)
	
	SetVirtualButtonVisible (adiante, 0)
	SetVirtualButtonVisible (menu, 0)
	SetVirtualButtonVisible (retonar, 0)
	SetVirtualButtonVisible (pause, 0)
	
	if GetVirtualButtonPressed (inicio) = 1
		estado = 1
	endif
		
	if GetVirtualButtonPressed(fora) = 1
		end
	endif
	tempo = 1
return:

estado1:
	contador1 = 0
	contador2 = 0
	total1 = 0
	total2 = 0
	tentativa1 = 0
	tentativa2 = 0
	caiu = 0
	
	SetSpritePhysicsOn (bloco, 1)
	
	if GetMusicPlayingOGG (music3) = 0
	StopMusicOGG (music)
	PlayMusicOGG (music3)
	endif
	
	if GetSpriteExists (estrela1) = 1
		SetSpriteVisible (estrela1, 0)
	endif
	
	if GetSpriteExists (estrela2) = 1
		SetSpriteVisible (estrela2, 0)
	endif
	
	SetVirtualButtonVisible (adiante, 0)
	SetVirtualButtonVisible (menu, 0)
	SetVirtualButtonVisible (retonar, 0)
	SetVirtualButtonVisible (inicio, 0)
	SetVirtualButtonVisible (fora, 0)
	SetVirtualButtonVisible (pause, 1)
	
	SetSpriteVisible (inicial, 0)
	SetSpriteVisible (escuro, 0)
	SetSpriteVisible (estrela, 0)
	SetSpriteVisible (bolas, 1)
	SetSpriteVisible (bloco, 1)
	SetSpriteVisible (backdrop, 1)
	SetSpriteVisible (backdrop1, 0)
	SetSpriteVisible (Buraco, 1)
	SetSpriteVisible (outro, 1)
	SetSpriteVisible (sprite, 1)
	
	SetTextVisible (2, 1)
	SetTextVisible (1, 0)
	SetTextVisible (4, 0)
	SetTextVisible (5, 0)
	
	SetTextString (3, "Score: " + str(total))
	
	if tempo = 0
		SetSpritePosition (sprite, 570, 300)
		SetSpritePhysicsVelocity (sprite, 0, 0)
		SetSpriteColor (sprite, 102, 255, 255, 255)
		tempo = 1 
		setspritecolor (bolas, 255, 102, 204, 255)
		
		timpo = 1
	endif
	
	if marcado = 0
		tempo = 0
	endif
			
	marcado = marcado + 1
		
	if marcado = 60
		estado = 2
	endif
return:

estado2:
	SetTextVisible (2, 0)
	SetTextVisible (3, 1)
	
	marcado = 0
	
	SetVirtualButtonActive (fora, 0)
	SetVirtualButtonActive (pause, 1)
	
	if GetVirtualButtonPressed (pause) = 1
		estado = 25
	endif
	
	if tempo = 0
		contador1 = 0
		contador2 = 0
		total1 = 0
		total2 = 0
		tentativa1 = 0
		tentativa2 = 0
		caiu = 0

		tempo = 1
	endif
	
	SetTextString (3, "Score: " + str(total))
	
	gosub movimento
	
	gosub collision
	
	tentativa = tentativa1 + tentativa2
	
	contador = contador1 + contador2
	
	total = total1 + total2
	
	if caiu = 2
		estado = 3
		tempo = 0
	endif
return:

estado25:
	SetSpriteVisible (escuro, 1)
	SetVirtualButtonVisible (pause, 0)
	SetVirtualButtonActive (pause, 0)
	SetVirtualButtonActive (fora, 1)
	
	SetVirtualButtonVisible (fora, 1)
	SetVirtualButtonVisible (menu, 1)
	SetVirtualButtonVisible (retonar, 1)
	
	if GetVirtualButtonPressed (menu) = 1
		tempo = 0
		estado = 0
	endif
	
	if GetVirtualButtonPressed (retonar) = 1
		tempo = 0
		estado = 1
	endif
	
	if GetVirtualButtonPressed(fora) = 1
		end
	endif

return:

estado3:
	SetSpriteVisible (escuro, 1)
	
	SetVirtualButtonVisible (fora, 1)
	SetVirtualButtonVisible (adiante, 1)
	SetVirtualButtonVisible (menu, 1)
	SetVirtualButtonVisible (retonar, 1)
	SetVirtualButtonActive (fora, 1)
	SetVirtualButtonVisible (pause, 0)
	SetVirtualButtonActive (fora, 1)
	SetVirtualButtonActive (pause, 0)
	
	SetRawMouseVisible (1)
	
	
	SetTextString (3, "Score: " + str(total))
	SetTextString (4, "Pontuação: " + str(total))
	
	if tempo = 0
		SetTextVisible (4, 1)
		
		SetSpriteVisible (estrela, 1)
		
		if total = 2000
			estrela2 = CloneSprite (estrela)
			SetSpritePosition (estrela2, 300, 190)				
		endif
		
		if total >= 666
			estrela1 = CloneSprite (estrela)
			SetSpritePosition (estrela1, 240, 165)	
		endif
		
		if total < 500
			SetSpriteVisible (estrela, 0)
		endif
		tempo = 1
	endif
	
	if GetVirtualButtonPressed (menu) = 1
		tempo = 0
		estado = 0
	endif
	
	if GetVirtualButtonPressed (adiante) = 1
		estado = 4
	endif
	
	if GetVirtualButtonPressed (retonar) = 1
		tempo = 0
		estado = 1
	endif
	
	if GetVirtualButtonPressed(fora) = 1
		end
	endif
return:

estado4:
	contador1 = 0
	contador2 = 0
	total1 = 0
	total2 = 0
	tentativa1 = 0
	tentativa2 = 0
	caiu = 0
	
	SetSpritePhysicsVelocity (sprite, 0, 0)
	SetSpriteVisible (seta, 0)
	
	if GetMusicPlayingOGG (music4) = 0
	StopMusicOGG (music3)
	PlayMusicOGG (music4)
	endif
	
	if GetSpriteExists (estrela1) = 1
		SetSpriteVisible (estrela1, 0)
	endif
	
	if GetSpriteExists (estrela2) = 1
		SetSpriteVisible (estrela2, 0)
	endif
	
	SetVirtualButtonVisible (adiante, 0)
	SetVirtualButtonVisible (menu, 0)
	SetVirtualButtonVisible (retonar, 0)
	SetVirtualButtonVisible (inicio, 0)
	SetVirtualButtonVisible (fora, 0)
	SetVirtualButtonVisible (pause, 1)
	
	SetSpriteVisible (inicial, 0)
	SetSpriteVisible (escuro, 0)
	SetSpriteVisible (estrela, 0)
	SetSpriteVisible (bolas, 1)
	SetSpriteVisible (bloco, 0)
	SetSpriteVisible (bloco2, 1)
	SetSpriteVisible (backdrop, 0)
	SetSpriteVisible (backdrop1, 1)
	SetSpriteVisible (Buraco, 1)
	SetSpriteVisible (outro, 1)
	SetSpriteVisible (sprite, 1)
	
	SetTextVisible (2, 0)
	SetTextVisible (1, 0)
	SetTextVisible (4, 0)
	SetTextVisible (5, 1)
	
	SetSpritePhysicsOff (bloco)
	SetSpritePhysicsOn (bloco2, 1)
	
	SetTextString (3, "Score: " + str(total))
	
	if tempo = 0
		SetSpritePosition (sprite, 300, 570)
		SetSpritePhysicsVelocity (sprite, 0, 0)
		SetSpriteColor (sprite, 102, 255, 255, 255)
		setspritecolor (bolas, 255, 102, 204, 255)
		
		SetSpritePosition (buraco, 530, 10)
		SetSpritePosition (outro, 40, 10)
		
		timpo = 1
	endif
	
	if marcado = 0
		tempo = 0
	endif
			
	marcado = marcado + 1
		
	if marcado = 60
		estado = 5
	endif
return:

estado5:
	
	SetTextVisible (5, 0)
	SetTextVisible (3, 1)
	
	marcado = 0
	
	SetVirtualButtonActive (fora, 0)
	SetVirtualButtonActive (pause, 1)
	
	if GetVirtualButtonPressed (pause) = 1
		estado = 55
	endif
	
	if tempo = 0
		contador1 = 0
		contador2 = 0
		total1 = 0
		total2 = 0
		tentativa1 = 0
		tentativa2 = 0
		caiu = 0

		tempo = 1
	endif
	
	SetTextString (3, "Score: " + str(total))
	SetTextString (4, "Pontuação: " + str(total))
	
	gosub movimento
	
	gosub collision
	
	tentativa = tentativa1 + tentativa2
	
	contador = contador1 + contador2
	
	total = total1 + total2
	
	if caiu = 2
		estado = 6
		tempo = 0
	endif
return:

estado55:
	SetSpriteVisible (escuro, 1)
	SetVirtualButtonVisible (pause, 0)
	SetVirtualButtonActive (pause, 0)
	SetVirtualButtonActive (fora, 1)
	
	SetVirtualButtonVisible (fora, 1)
	SetVirtualButtonVisible (menu, 1)
	SetVirtualButtonVisible (retonar, 1)
	
	if GetVirtualButtonPressed (menu) = 1
		tempo = 0
		estado = 0
	endif
	
	if GetVirtualButtonPressed (retonar) = 1
		tempo = 0
		estado = 4
	endif
	
	if GetVirtualButtonPressed(fora) = 1
		end
	endif
return:

estado6:
	SetSpriteVisible (escuro, 1)
	
	SetVirtualButtonVisible (fora, 1)
	SetVirtualButtonVisible (adiante, 1)
	SetVirtualButtonVisible (menu, 1)
	SetVirtualButtonVisible (retonar, 1)
	SetVirtualButtonVisible (pause, 0)
	SetVirtualButtonActive (fora, 1)
	SetVirtualButtonActive (pause, 0)
	
	SetRawMouseVisible (1)
	
	SetTextString (3, "Score: " + str(total))
	SetTextString (4, "Pontuação: " + str(total))
	
	if tempo = 0
		SetTextVisible (4, 1)
		
		SetSpriteVisible (estrela, 1)
		
		if total = 2000
			estrela2 = CloneSprite (estrela)
			SetSpritePosition (estrela2, 300, 190)				
		endif
		
		if total >= 666
			estrela1 = CloneSprite (estrela)
			SetSpritePosition (estrela1, 240, 165)	
		endif
		
		if total < 500
			SetSpriteVisible (estrela, 0)
		endif
		tempo = 1
	endif
	
	if GetVirtualButtonPressed (menu) = 1
		tempo = 0
		estado = 0
	endif
	
	if GetVirtualButtonPressed (retonar) = 1
		tempo = 0
		estado = 4
	endif
	
	if GetVirtualButtonPressed (adiante) = 1
		estado = 7
	endif
	
	if GetVirtualButtonPressed(fora) = 1
		end
	endif
return: 

estado7:
	contador1 = 0
	contador2 = 0
	total1 = 0
	total2 = 0
	tentativa1 = 0
	tentativa2 = 0
	caiu = 0
	
	SetSpritePhysicsVelocity (sprite, 0, 0)
	SetSpriteVisible (seta, 0)
	
	if GetMusicPlayingOGG (music2) = 0
	StopMusicOGG (music4)
	PlayMusicOGG (music2)
	endif
	
	if GetSpriteExists (estrela1) = 1
		SetSpriteVisible (estrela1, 0)
	endif
	
	if GetSpriteExists (estrela2) = 1
		SetSpriteVisible (estrela2, 0)
	endif
	
	SetVirtualButtonVisible (adiante, 0)
	SetVirtualButtonVisible (menu, 0)
	SetVirtualButtonVisible (retonar, 0)
	SetVirtualButtonVisible (inicio, 0)
	SetVirtualButtonVisible (fora, 0)
	SetVirtualButtonVisible (pause, 1)
	
	SetSpriteVisible (inicial, 0)
	SetSpriteVisible (escuro, 0)
	SetSpriteVisible (estrela, 0)
	SetSpriteVisible (bolas, 1)
	SetSpriteVisible (bloco, 0)
	SetSpriteVisible (bloco2, 0)
	SetSpriteVisible (backdrop, 0)
	SetSpriteVisible (backdrop1, 0)
	SetSpriteVisible (backdrop2, 1)
	SetSpriteVisible (Buraco, 1)
	SetSpriteVisible (outro, 1)
	SetSpriteVisible (sprite, 1)
	SetSpriteVisible (gira, 1)
	SetSpriteVisible (gira1, 1)
	
	SetTextVisible (2, 0)
	SetTextVisible (1, 0)
	SetTextVisible (4, 0)
	SetTextVisible (5, 0)
	SetTextVisible (6, 1)
	
	SetSpritePhysicsOff (bloco)
	SetSpritePhysicsOff (bloco2)
	SetSpritePhysicsOn (gira, 1)
	SetSpritePhysicsOn (gira1, 1)
	
	SetTextString (3, "Score: " + str(total))
	
	if tempo = 0
		SetSpritePosition (sprite, 300, 570)
		SetSpritePhysicsVelocity (sprite, 0, 0)
		SetSpriteColor (sprite, 102, 255, 255, 255)
		setspritecolor (bolas, 255, 102, 204, 255)
		
		SetSpritePosition (buraco, 530, 10)
		SetSpritePosition (outro, 40, 10)
		
		timpo = 1
	endif
	
	if marcado = 0
		tempo = 0
	endif
			
	marcado = marcado + 1
		
	if marcado = 60
		estado = 8
	endif
return:

estado8:
	SetTextVisible (6, 0)
	SetTextVisible (3, 1)
	
	marcado = 0
	
	SetVirtualButtonActive (fora, 0)
	SetVirtualButtonActive (pause, 1)
	
	if GetVirtualButtonPressed (pause) = 1
		estado = 85
	endif
	
	if tempo = 0
		contador1 = 0
		contador2 = 0
		total1 = 0
		total2 = 0
		tentativa1 = 0
		tentativa2 = 0
		caiu = 0

		tempo = 1
	endif
	
	SetTextString (3, "Score: " + str(total))
	SetTextString (4, "Pontuação: " + str(total))
	
	gosub movimento
	
	gosub collision
	
	tentativa = tentativa1 + tentativa2
	
	contador = contador1 + contador2
	
	total = total1 + total2
	
	if caiu = 2
		estado = 9
		tempo = 0
	endif
return:

estado85:
	SetSpriteVisible (escuro, 1)
	SetVirtualButtonVisible (pause, 0)
	SetVirtualButtonActive (pause, 0)
	SetVirtualButtonActive (fora, 1)
	
	SetVirtualButtonVisible (fora, 1)
	SetVirtualButtonVisible (menu, 1)
	SetVirtualButtonVisible (retonar, 1)
	
	if GetVirtualButtonPressed (menu) = 1
		tempo = 0
		estado = 0
	endif
	
	if GetVirtualButtonPressed (retonar) = 1
		tempo = 0
		estado = 6
	endif
	
	if GetVirtualButtonPressed(fora) = 1
		end
	endif
return:

estado9:
	SetSpriteVisible (escuro, 1)
	
	SetVirtualButtonVisible (fora, 1)
	SetVirtualButtonVisible (adiante, 0)
	SetVirtualButtonVisible (menu, 1)
	SetVirtualButtonVisible (retonar, 1)
	SetVirtualButtonVisible (pause, 0)
	SetVirtualButtonActive (fora, 1)
	SetVirtualButtonActive (pause, 0)
	
	SetRawMouseVisible (1)
	
	SetTextString (3, "Score: " + str(total))
	SetTextString (4, "Pontuação: " + str(total))
	
	if tempo = 0
		SetTextVisible (4, 1)
		
		SetSpriteVisible (estrela, 1)
		
		if total = 2000
			estrela2 = CloneSprite (estrela)
			SetSpritePosition (estrela2, 300, 190)				
		endif
		
		if total >= 666
			estrela1 = CloneSprite (estrela)
			SetSpritePosition (estrela1, 240, 165)	
		endif
		
		if total < 500
			SetSpriteVisible (estrela, 0)
		endif
		tempo = 1
	endif
	
	if GetVirtualButtonPressed (menu) = 1
		tempo = 0
		estado = 0
	endif
	
	if GetVirtualButtonPressed (retonar) = 1
		tempo = 0
		estado = 7
	endif
	
	if GetVirtualButtonPressed(fora) = 1
		end
	endif
return:
