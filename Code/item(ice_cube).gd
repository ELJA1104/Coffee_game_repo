extends CharacterBody2D
class_name Ice_cube_node
var when_is_grab_ice : bool = false
var mouse_inside_ice : bool = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	add_to_group("ice cube")

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

func tp_to_spwaner():
	var _spwaner = $"../spwaner(ice cube)" 
	if _spwaner:
		global_position = _spwaner.global_position
