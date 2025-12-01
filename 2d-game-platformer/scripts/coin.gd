extends Area2D

@onready var gamechanger: Node = %gamechanger
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	gamechanger.pointadd()
	animation_player.play("pickup")
