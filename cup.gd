extends Node2D

func hide_cup():
	get_node('item(cup)').visible = false
	
func show_cup():
	get_node('item(cup)').visible = true

func tp_cup_grinder():
	global_position = lerp(global_position,coffee_grinder,0.1)
	pass
