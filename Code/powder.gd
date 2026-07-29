extends Node2D

func hide_powder():
	get_node('item(powder)').visible = false
	
func show_powder():
	get_node('item(powder)').visible = true
