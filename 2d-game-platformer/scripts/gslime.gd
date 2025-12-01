extends Node2D

const speed=60
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_2_dright: RayCast2D = $RayCast2Dright
@onready var ray_cast_2_dleft: RayCast2D = $RayCast2Dleft

var direction=1
func _process(delta: float) -> void:
	if ray_cast_2_dright.is_colliding():
		direction=-1
		animated_sprite.flip_h = true
	if ray_cast_2_dleft.is_colliding():
		direction=1
		animated_sprite.flip_h = false
	position.x += direction*speed*delta
