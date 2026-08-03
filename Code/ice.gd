extends Node2D

func hide_ice():
	get_node('item(ice)').queue_free() 
	print('hide ice')
	
	


func _ready():
		Noel_sEvent.ice_hidden_permition.connect(hide_ice)




	
