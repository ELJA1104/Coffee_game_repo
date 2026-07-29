extends CharacterBody2D
class_name Ethan_Puck
@export var btn : Button
var dragged : bool = false
var Offset : Vector2 = Vector2(0,0)
var flavour : String

func _on_button_button_down() -> void:
	dragged = true
	Offset = get_global_mouse_position() - self.global_position

func _on_button_button_up() -> void:
	dragged = false
	
func _process(delta: float) -> void:
	if dragged == true:
		self.global_position = lerp(global_position, get_global_mouse_position(), 0.5) - Offset  
