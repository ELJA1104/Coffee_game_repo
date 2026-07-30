extends CharacterBody2D

var when_is_grab_milk : bool = false
var mouse_inside_milk : bool = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	add_to_group("milk")
	
func _process(_delta):
	if when_is_grab_milk:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and mouse_inside_milk:
			when_is_grab_milk = true
		else:
			when_is_grab_milk = false
			
func _on_mouse_entered():
	mouse_inside_milk = true

func _on_mouse_exited():
	mouse_inside_milk = false
#========================================================================================


func tp_tmilk(tmilk):
	global_position = tmilk
#=============================================================
#signal tmilk(global_position: Vector2)

#func 放ready():
	#tmilk.emit(global_position)
	
#milk.tp_tmilk()
	










	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
