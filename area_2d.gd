extends Area2D
signal teleport_requested(position_Grinder: Vector2) 
#noel's

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("bean"):
	
