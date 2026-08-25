extends Node2D
const SPEED = 60
var direction = 1
@onready var ray_cast_2d_rt: RayCast2D = $RayCast2D_rt
@onready var ray_cast_2d_lt_2: RayCast2D = $RayCast2D_lt2
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_2d_rt.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
		
	if ray_cast_2d_lt_2.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction*SPEED*delta
	
