extends Node2D

func hide_milk():
	get_node('item(milk)').visible = false
	print('hide milk')
	
func show_milk():
	get_node('item(milk)').visible = true

func _ready():
	Noel_sEvent.milk_hidden_permition.connect(hide_milk)





	
