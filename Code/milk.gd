extends Node2D

func _ready():
	add_to_group("milk")

	
func hide_milk():
	get_node('item(milk)').visible = false
	
func show_milk():
	get_node('item(milk)').visible = true







	
