extends Node2D
	
func hide_ice():
	get_node('item(ice)').visible = false
	print('hide ice')
	
func show_ice():
	get_node('item(ice)').visible = true

func _ready():
	Noel_sEvent.ice_hidden_permition.connect(hide_ice)





	
