extends CharacterBody2D

var when_is_grab_coffe_bean : bool = false
var mouse_inside_coffe_bean : bool = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	
func _process(_delta):
	if when_is_grab_coffe_bean:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and mouse_inside_coffe_bean:
			when_is_grab_coffe_bean = true
		else:
			when_is_grab_coffe_bean = false
			
func _on_mouse_entered():
	mouse_inside_coffe_bean = true

func _on_mouse_exited():
	mouse_inside_coffe_bean = false
#========================================================================================


func tp_coffe_bean(coffe_bean):
	global_position = coffe_bean
#=============================================================
signal tp(coffe_bean: Vector2)

func 放ready():
	tp.emit(global_position)



































'func _on_teleport_request(tp_coffe_bean, pos):
	if tp_coffe_bean == "tp_to_coffe_bean":
		global_position = pos





	
signal teleport_request(tp_coffe_bean: String, pos: Vector2)
	
func ready():
	teleport_request.emit("tp_to_coffe_bean", global_position)'

	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
