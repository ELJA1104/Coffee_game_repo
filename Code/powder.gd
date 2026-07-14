extends Node2D

func _ready():
	add_to_group("powder")
	
func hide_powder():
	get_node('item(powder)').visible = false
	
func show_powder():
	get_node('item(powder)').visible = true
