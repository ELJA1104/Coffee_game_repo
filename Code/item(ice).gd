extends CharacterBody2D

var when_is_grab_ice : bool = false
var mouse_inside_ice : bool = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	
func _process(_delta):
	if when_is_grab_ice:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and mouse_inside_ice:
			when_is_grab_ice = true
		else:
			when_is_grab_ice = false
			
func _on_mouse_entered():
	mouse_inside_ice = true

func _on_mouse_exited():
	mouse_inside_ice = false
#========================================================================================


func tp_tice(tice):
	global_position = tice
#=============================================================
#signal tice(global_position: Vector2)

#func 放ready():
	#tice.emit(global_position)
	
#ice.tp_tice()
	










	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
