extends Node2D

@export var ice : CharacterBody2D
@export var Text_label : Label
@export var Progress_Bar_cup : ProgressBar 




func _ready():
	add_to_group("cup")



func hide_cup():
	get_node('item(cup)').visible = false
	
func show_cup():
	get_node('item(cup)').visible = true





#=============================================================================================================
