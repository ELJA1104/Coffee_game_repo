extends CharacterBody2D

var when_is_grab_cup : bool = false

func _process(_delta):
	if when_is_grab_cup:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			when_is_grab_cup = true
		else:
			when_is_grab_cup = false
#========================================================================================




	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
