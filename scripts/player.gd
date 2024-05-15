extends CharacterBody2D

#tbh this is mostly the default player template

const SPEED = 300.0

func _physics_process(_delta):
	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	#if we hit something, then delete ourself
	if move_and_slide():
		self.queue_free()
