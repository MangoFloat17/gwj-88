extends Area2D

var bullet_travel = 0

func _physics_process(delta: float) -> void:
	const SPEED = 150
	const RANGE = 400
	
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * SPEED * delta
	
	bullet_travel += SPEED * delta
	if bullet_travel > RANGE:
		queue_free()


func _on_body_entered(body):
	queue_free()
	if body.has_method("take_damage"):
		body.take_damage(1)
