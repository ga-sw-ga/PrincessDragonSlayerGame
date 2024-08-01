extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_l = $RayCast/RayCastL
@onready var ray_cast_r = $RayCast/RayCastR
@onready var animated_sprite_2d = $AnimatedSprite2D

func _process(delta):
	if ray_cast_l.is_colliding() and direction == -1:
		direction = 1
		animated_sprite_2d.flip_h = false
	elif ray_cast_r.is_colliding() and direction == 1:
		direction = -1
		animated_sprite_2d.flip_h = true
	position.x += SPEED * delta * direction
