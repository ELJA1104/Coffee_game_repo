extends CharacterBody2D

var when_is_grab_powder : bool = false
var mouse_inside_powder : bool = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	
func _process(_delta):
	if when_is_grab_powder:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and mouse_inside_powder:
			when_is_grab_powder = true
		else:
			when_is_grab_powder = false
			
func _on_mouse_entered():
	mouse_inside_powder = true

func _on_mouse_exited():
	mouse_inside_powder = false
#==========================================================================================



func tp_powder(powder):
	global_position = powder
#=============================================================
signal powder(global_position: Vector2)

func 放ready():
	powder.emit(global_position)
	
powder.tp_powder()
	
