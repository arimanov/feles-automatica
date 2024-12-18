extends CharacterBody2D


const SPEED = 30.0

func _physics_process(delta):
	var collision = move_and_collide(Vector2.DOWN * SPEED * delta)
	if collision:
		var collider = collision.get_collider()
		if collider.has_method("take_damage"):
			collider.take_damage()
		queue_free()
