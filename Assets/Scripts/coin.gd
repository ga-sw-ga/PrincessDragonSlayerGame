extends Area2D

@onready var game_manager = %GameManager
@onready var audio_manager = %AudioManager


func _on_body_entered(body):
	game_manager.add_point()
	audio_manager.play_coin_fx()
	queue_free()
