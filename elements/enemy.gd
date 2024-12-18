extends CharacterBody2D

@onready var raycast_left := $RayCastLeft
@onready var raycast_right := $RayCastRight

const BULLET_SCENE = preload("res://elements/enemy_bullet.tscn")

func _physics_process(delta):
	pass
	if raycast_left.is_colliding() or raycast_right.is_colliding():
		print("Touch a wall")
		get_tree().call_group("enemy_group", "change_direction")
		
		
func shot():
	var bullet = BULLET_SCENE.instantiate()
	bullet.global_position += global_position;
	add_child(bullet)

func destroy():
	queue_free()
	
