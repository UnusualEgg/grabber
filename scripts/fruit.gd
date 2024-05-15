extends CharacterBody2D

# Get the gravity from the project settings
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	# Add the gravity.
	velocity.y=gravity*delta
	move_and_slide()

#when it passes the bottom of the screen, delete it
func _on_screen_exited():
	print_debug("baiiii")
	self.queue_free()
