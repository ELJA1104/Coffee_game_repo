extends Node2D

func hide_sugar():
	get_node('item(sugar)').visible = false
	print('hide_sugar')
	
func show_sugar():
	get_node('item(sugar)').visible = true

func _ready():
	Noel_sEvent.sugar_hidden_permition.connect(hide_sugar)






	
