extends Node2D

const speed=60
@onready var ray_cast_2_dright: RayCast2D = $AnimatedSprite2D/RayCast2Dright
@onready var ray_cast_2d_2_left: RayCast2D = $AnimatedSprite2D/RayCast2D2left
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var direction=1
func _process(delta: float) -> void:
	if ray_cast_2_dright.is_colliding():
		direction=-1
		animated_sprite.flip_h = true
	if ray_cast_2d_2_left.is_colliding():
		direction=1
		animated_sprite.flip_h = false
	position.x += direction*speed*delta
