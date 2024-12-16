extends Node2D

var direction := Vector2.RIGHT
var speed := 20.0

func _process(delta):
	global_position += direction * speed * delta
