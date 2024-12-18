extends CharacterBody2D
const SPEED = 300.0
const FIRE_SCENE = preload("res://elements/fire.tscn")

func _physics_process(delta):
	
	if Input.is_action_just_pressed("ui_accept"):
		shot()
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * SPEED
	move_and_slide()

func shot():
	var bullet = FIRE_SCENE.instantiate()
	bullet.global_position = global_position + Vector2(0, -10)
	add_child(bullet)

func take_damage():
	pass
