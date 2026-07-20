extends Node2D
var is_filling : bool = false

func _ready():
	add_to_group("ice")
	
func hide_ice():
	get_node('item(ice)').visible = false
	
func show_ice():
	get_node('item(ice)').visible = true






	
