Sprites:
	inicial = LoadImage ("backgroundmadeira.png")
	CreateSprite (inicial, inicial)
	setspritesize (inicial, 600, 600)
	SetSpriteDepth (inicial, 10)

	backdrop = LoadImage ("venice.jpg")
	CreateSprite (backdrop, backdrop)
	SetSpriteSize (backdrop, 600, 600) 
	FixSpriteToScreen (backdrop, 1)
	SetSpriteDepth (backdrop, 10)
	
	backdrop1 = LoadImage ("Asphalt.jpg")
	CreateSprite (backdrop1, backdrop1)
	SetSpriteSize (backdrop1, 600, 600) 
	FixSpriteToScreen (backdrop1, 1)
	SetSpriteDepth (backdrop1, 10)
	
	backdrop2 = LoadImage ("espaco-1.jpg")
	CreateSprite (backdrop2, backdrop2)
	SetSpriteSize (backdrop2, 600, 600) 
	FixSpriteToScreen (backdrop2, 1)
	SetSpriteDepth (backdrop2, 10)
	
	Buraco = LoadImage ("Shield.png")
	CreateSprite (Buraco, Buraco)
	SetSpriteSize (Buraco, 30, -1)
	SetSpritePosition (Buraco, 10, 10)
	SetSpriteShape ( Buraco, 1)
	SetSpriteDepth (Buraco, 9)
	
	outro = LoadImage ("Shield2.png")
	CreateSprite (outro, outro)
	SetSpriteSize (outro, 30, -1)
	SetSpritePosition (outro, 10, 560)
	SetSpriteShape (outro, 1)
	SetSpriteDepth (outro, 9)
	 
	sprite = LoadImage ( "sphere-19.png" )
	CreateSprite (sprite, sprite)
	SetSpriteShape (sprite, 1)
	SetSpritePhysicsOn (sprite, 2)
	SetSpriteSize (sprite, 30, -1)
	SetSpritePosition (sprite, 570, 300)
	SetSpriteDepth (sprite, 8)
	
	seta = LoadImage ("seta2.png")
	CreateSprite (seta, seta)
	SetSpriteSize (seta, 80, 28)
	SetSpriteDepth (seta, 9)

	barreira = LoadImage ("grey_button06.png")
	CreateSprite (barreira, barreira)
	SetSpriteVisible (barreira, 0)
	SetSpritePhysicsOn (barreira, 1)
	SetSpriteSize (barreira, 600, 20)
	SetSpritePosition (barreira, 0, 600)
	SetSpriteDepth (barreira, 10)

	bolas = LoadImage ( "sphere-19.png" )
	CreateSprite (bolas, bolas)
	SetSpritePosition (bolas, 0, 600)
	SetSpriteSize (bolas, 20, 20) 
	SetSpriteDepth (bolas, 8)

	escuro = LoadImage ( "fundopreto.jpg")
	CreateSprite (escuro, escuro)
	SetSpriteSize (escuro, 600, 620)
	FixSpriteToScreen (escuro, 1)
	SetSpriteDepth (escuro, 7)
	SetSpriteColorAlpha (escuro, 150)

	estrela = LoadImage ("star.png")
	CreateSprite (estrela, estrela)
	SetSpriteColor (estrela, 255, 255, 0, 255)
	SetSpriteDepth (estrela, 7)
	SetSpritePosition (estrela, 180, 190)
	
	bloco = LoadImage ("bloco.png")
	CreateSprite (bloco, bloco)
	SetSpriteDepth (bloco, 10)
	SetSpritePhysicsOn (bloco, 1)
	SetSpriteSize (bloco, 330, 330)
	SetSpritePosition (bloco, 0, 140)
	
	bloco2 = LoadImage ("bloco2.png")
	CreateSprite (bloco2, bloco2)
	SetSpriteDepth (bloco2, 10)
	SetSpriteSize (bloco2, 530, 450)
	SetSpritePosition (bloco2, 37, 0)
	SetSpriteShape (bloco2, 3)
	SetSpriteColor (bloco2, 104, 104, 104, 255)
	
	gira = LoadImage ("gira.png")
	CreateSprite (gira, gira)
	SetSpriteDepth (gira, 8)
	SetSpritePosition (gira, 10, 90)
	SetSpriteShape (gira, 3)
	SetSpriteSize (gira, 90, 24)
	
	gira1 = LoadImage ("gira.png")
	CreateSprite (gira1, gira1)
	SetSpriteDepth (gira1, 8)
	SetSpritePosition (gira1, 490, 90)
	SetSpriteShape (gira1, 3)
	SetSpriteSize (gira1, 90, 24)
	
return:

botoes:
	sair = LoadImage ("exit.png")
	start = LoadImage ("buttonStart.png")
	proximo = LoadImage ("fastForward.png")
	home = LoadImage ("home.png")
	denovo = LoadImage ("return.png")
	para = LoadImage ("pause.png")
	inicio = 1
	fora = 2
	adiante = 3
	menu = 4
	retonar = 5
	pause = 6
return:

addbotoes:
	AddVirtualButton (inicio, 300, 300, 80)
	SetVirtualButtonAlpha (inicio, 255)
	SetVirtualButtonImageUp (inicio, start)
	SetVirtualButtonImageDown (inicio, start)
		
	AddVirtualButton (fora, 580, 20, 40)
	SetVirtualButtonAlpha (fora, 255)
	SetVirtualButtonImageUp (fora, sair)
	SetVirtualButtonImageDown (fora, sair)
	
	AddVirtualButton (adiante, 355, 330, 50)
	SetVirtualButtonAlpha (adiante, 255)
	SetVirtualButtonImageUp (adiante, proximo)
	setVirtualButtonImageDown (adiante, proximo)
	
	AddVirtualButton (menu, 292, 330, 50)
	SetVirtualButtonAlpha (menu, 255)
	SetVirtualButtonImageUp (menu, home)
	setVirtualButtonImageDown (menu, home)
	
	AddVirtualButton (retonar, 229, 330, 50)
	SetVirtualButtonAlpha (retonar, 255)
	SetVirtualButtonImageUp (retonar, denovo)
	setVirtualButtonImageDown (retonar, denovo)
		
	AddVirtualButton (pause, 580, 20, 40)
	SetVirtualButtonAlpha (pause, 255)
	SetVirtualButtonImageUp (pause, para)
	setVirtualButtonImageDown (pause, para)
return:
