extends CharacterBody2D
func _physics_process(delta):
	var input_direction = Input.get_vector("left1","right1","up1","down1")
	velocity = input_direction*450
	move_and_slide()
