extends Node2D
var Pug_detec : Area2D
var Cup_detec : Area2D
var Pug_detection_value : int = 0
var Cup_detection_value : int = 0

func get_input():
	pass
	
	
func _on_start_button_pressed() -> void:
	if Pug_detection_value == 1 and Cup_detection_value == 1:
		print("start button is pressed")
	else:
		print("something is missing")

func _on_stop_button_pressed() -> void:
	print("stop button is pressed")
	Pug_detection_value == 0
	Cup_detection_value == 0
	print(Pug_detection_value)
	print(Cup_detection_value)


func _on_pug_detection_area_entered(area: Area2D) -> void:
	print("Pug has been inserted")
	Pug_detection_value == 1
	
func _on_cup_detection_area_entered(area: Area2D) -> void:
	print("Cup thas been inserted")
	Cup_detection_value == 1
