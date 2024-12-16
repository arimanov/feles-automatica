extends CharacterBody2D

@onready var raycast_left := $RayCastLeft
@onready var raycast_right := $RayCastRight

func _physics_process(delta):
	pass
	if raycast_left.is_colliding() or raycast_right.is_colliding():
		print("Touch a wall")
		pass
		#get_tree().call_group("enemy_group", "toggleDirection")

func destroy():
	queue_free()
	
