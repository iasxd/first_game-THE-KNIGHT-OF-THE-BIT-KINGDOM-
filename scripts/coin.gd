extends Area2D
@onready var gamemanager: Node = %gamemanager



func _on_body_entered(body: Node2D) -> void:
	gamemanager.addpoint()
	queue_free()
