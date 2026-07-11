extends Node2D

func hide_cup():
	get_node('item(cup)').visible = false
	
func show_cup():
	get_node('item(cup)').visible = true

func tp_cup():
	get_node('').global_position
