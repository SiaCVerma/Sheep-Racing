extends CharacterBody2D
func _physics_process(delta):
	var input_direction = Input.get_vector("left","right","up","down")
	velocity = input_direction*300
	move_and_slide()
