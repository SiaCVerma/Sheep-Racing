extends CharacterBody2D
func _physics_process(delta):
	var input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = input_direction*425
	move_and_slide()
func _on_left_wall_area_entered(area: Area2D) -> void:
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = -velocity
	move_and_collide(velocity*0.1)
func _on_top_wall_area_entered(area: Area2D) -> void:
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = -velocity
	move_and_collide(velocity*0.1)
func _on_right_wall_area_entered(area: Area2D) -> void:
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = -velocity
	move_and_collide(velocity*0.1)
func _on_bottom_wall_area_entered(area: Area2D) -> void:
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = -velocity
	move_and_collide(velocity*0.1)




func _on_sheep_2_area_area_entered(area: Area2D) -> void:
	move_and_collide(-velocity*0.3)


func _on_sheep_3_area_area_entered(area: Area2D) -> void:
	move_and_collide(-velocity*0.2)
