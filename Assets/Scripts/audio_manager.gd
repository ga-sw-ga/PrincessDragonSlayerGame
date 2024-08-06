extends Node

@onready var coin_fx = $CoinFX
@onready var jump_fx = $JumpFX

func play_coin_fx():
	coin_fx.play()

func play_jump_fx():
	jump_fx.play()
