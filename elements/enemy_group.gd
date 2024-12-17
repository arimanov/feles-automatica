extends Node2D

const ROW_STEP = 10.0
const SPEED = 10.0

@onready var block_timer := $BlockTimer

var direction := Vector2.RIGHT

func _process(delta):
	global_position += direction * SPEED * delta

func change_direction():
	print("-> change_direction")
	if block_timer.time_left > 0:
		return
	direction = Vector2.LEFT if direction == Vector2.RIGHT else Vector2.RIGHT
	global_position.y += ROW_STEP
	block_timer.start()
