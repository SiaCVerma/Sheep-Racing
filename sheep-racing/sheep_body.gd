extends Sprite2D
func _physics_process(delta):
	var input_direction = Input.get_vector("ui_left","ui_right","ui_up"'"ui_down')
	var input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = input_direction*800
	move_and_slide()
