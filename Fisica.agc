fase:
		SetSpritePhysicsMass (sprite, 0.0)
		SetSpritePhysicsRestitution (sprite, 0.85)
		SetSpritePhysicsCanRotate (sprite, 0)
		SetSpritePhysicsFriction (sprite, 0.0)
		
		if velocidade > 100 or velocidade < -100
			SetSpritePhysicsDamping (sprite, 0.3865555)
		endif
return:

bolavelocidade:
	x# = GetPointerX()
	y# = GetPointerY()
	x = GetSpriteXByOffset(sprite)
	y = GetSpriteYByOffset(sprite)
	
	SetSpritePositionByOffset (seta, x , y)
	
	velox = GetSpritePhysicsVelocityX(sprite)
	veloy = GetSpritePhysicsVelocityY(sprite)
	
	velocidade = pow(velox,2) + pow(veloy,2) 
	
	if velocidade > 600 and velocidade <= 1000
		SetSpritePhysicsDamping (sprite, 0.4)
	endif
	
	if velocidade > 200 and velocidade <= 600
		SetSpritePhysicsDamping (sprite, 0.6)
	endif
	
	if velocidade > 70 and velocidade <= 200
		SetSpritePhysicsDamping (sprite, 1.5)
	endif
	
	if velocidade > 0 and velocidade <= 70
		SetSpritePhysicsDamping (sprite, 2.5)
	endif
	
return:
