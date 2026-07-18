extends CharacterBody2D

var when_is_grab_cup : bool = false
var mouse_inside_cup : bool = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	
func _process(_delta):
	if when_is_grab_cup:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and mouse_inside_cup:
			when_is_grab_cup = true
		else:
			when_is_grab_cup = false
			
func _on_mouse_entered():
	mouse_inside_cup = true

func _on_mouse_exited():
	mouse_inside_cup = false
#========================================================================================

func cup_fill():
	ProgressBar.visible = true
	ProgressBar.value += 1.5
	
	
func cup_stop_fill():
	ProgressBar.value += 0
	
func cup_return_to_zero():
	ProgressBar.visible = false
	ProgressBar.value = 0
	

#=========================================================================================
func tp_cup(cup):
	global_position = cup
#=============================================================
signal cup(global_position: Vector2)

func 放ready():
	cup.emit(global_position)
	

	
	
	
