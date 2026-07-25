extends Node2D

func _ready():
	add_to_group("ice")

	
func hide_ice():
	get_node('item(ice)').visible = false
	
func show_ice():
	get_node('item(ice)').visible = true







	
