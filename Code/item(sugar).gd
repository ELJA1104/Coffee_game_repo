extends CharacterBody2D

var when_is_grab_sugar : bool = false
var mouse_inside_sugar : bool = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	add_to_group("sugar")
	
func _process(_delta):
	if when_is_grab_sugar:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and mouse_inside_sugar:
			when_is_grab_sugar = true
		else:
			when_is_grab_sugar = false
			
func _on_mouse_entered():
	mouse_inside_sugar = true

func _on_mouse_exited():
	mouse_inside_sugar = false
#========================================================================================


func tp_tsugar(tsugar):
	global_position = tsugar
#=============================================================
#signal tsugar(global_position: Vector2)

#func 放ready():
	#tsugar.emit(global_position)
	
#sugar.tp_tsugar()
	










	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
