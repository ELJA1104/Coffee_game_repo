extends Node2D

func hide_cup():
	get_node('item(cup)').visible = false
	
func show_cup():
	get_node('item(cup)').visible = true





#=============================================================================================================
func _ready():
	$"item(cup)/Area2D".body_entered.connect(_on_area_2d_body_entered)

func _on_area_2d_body_entered(body):
	print(body.name)
	$"item(cup)".ice_in()
