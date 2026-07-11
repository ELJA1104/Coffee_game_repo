extends Node2D

func _ready():
	add_to_group("cup")
	
func hide_cup():
	get_node('item(cup)').visible = false
	
func show_cup():
	get_node('item(cup)').visible = true

func tp_cup():
	global_position = lerp(global_position,coffee_grinder,0.2)
