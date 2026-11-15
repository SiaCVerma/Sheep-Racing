extends Area2D
@export var sheep3: CharacterBody2D
@export var sheep2: CharacterBody2D
func _on_sheep_1_area_collision_entered(collision: CollisionShape2D) -> void:
	var input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	func _physics_process(delta):
				velocity = input_direction*300
				move_and_collide(velocity*0.1)
	if CollisionShape2D==sheep2:
		get_parent().velocity.x=sheep2.velocity.x*4
		get_parent().velocity.y=sheep2.velocity.y*4
		get_parent().move_and_collide(get_parent().velocity)
		print("Crashed")
