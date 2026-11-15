extends Area2D
@export var sheep3: CharacterBody2D
@export var sheep2: CharacterBody2D
func _on_sheep_1_area_body_entered(body: CharacterBody2D) -> void:
	print("Collided")
	if body==sheep3:
		get_parent().velocity.x=sheep3.velocity.x*-2
		get_parent().velocity.y=sheep3.velocity.y*-2
		get_parent().move_and_collide(get_parent().velocity)
		print("Collision initiated")
	if body==sheep2:
		get_parent().velocity.x=sheep2.velocity.x*-4
		get_parent().velocity.y=sheep2.velocity.y*-4
		get_parent().move_and_collide(get_parent().velocity)
		print("Crashed")
