extends Node2D
@export var Pug_detec : Area2D
@export var Cup_detec : Area2D
@export var Cup_detection_value : int = 0
@export var cup_tp_pos: Node2D
@export var puck_tp_pos: Node2D
@export var Progress_Bar : ProgressBar

func get_input():
	pass
func _ready() -> void:
	pass
	
func _on_start_button_pressed() -> void:
	#if Cup_detection_value == 1:
	print("start button is pressed")
	for i in range(100):
		Progress_Bar.value += 1
		await get_tree().create_timer(.1).timeout
	#else:
	#	print("something is missing")

func _on_stop_button_pressed() -> void:
	print("stop button is pressed")
	Cup_detection_value == 0
	Progress_Bar.value = Progress_Bar.value
	
func _on_cup_detection_area_entered(area: Area2D) -> void:
	print("Cup thas been inserted")
	Cup_detection_value == 1
	
	
