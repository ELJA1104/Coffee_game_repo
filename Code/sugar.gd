extends Node2D

func _ready():
	add_to_group("sugar")

	
func hide_sugar():
	get_node('item(sugar)').visible = false
	
func show_sugar():
	get_node('item(sugar)').visible = true







	
