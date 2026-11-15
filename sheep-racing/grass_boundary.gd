extends Area2D
@export var center_node: Node2D

func _on_body_exited(body: Node2D) -> void:
k	body.global_position = center_node.global_positionRestartNode
	
