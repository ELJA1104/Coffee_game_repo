extends Node2D

func hide_coffe_bean():
	get_node('item(coffe bean)').visible = false
	
func show_coffe_bean():
	get_node('item(coffe bean)').visible = true
