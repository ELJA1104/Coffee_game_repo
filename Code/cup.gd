extends Node2D

func hide_cup():
	get_node('item(cup)').visible = false
	
func show_cup():
	get_node('item(cup)').visible = true





#=============================================================================================================
func _ready():
	$"item(cup)/Area2D".body_entered.connect(_on_area_2d_body_entered)
	$"item(cup)/Area2D".body_exited.connect(_on_area_2d_body_exited)
	
func _on_area_2d_body_entered(body):
	print(body.name)
	if body.is_in_group("ice"):
		$"item(cup)".ice_in()
	elif body.is_in_group("sugar"):
		$"item(cup)".sugar_in()
	elif body.is_in_group("milk"):
		$"item(cup)".milk_in()
	
func _on_area_2d_body_exited(_body):
	print('stop add things')
	$"item(cup)".no_in()
