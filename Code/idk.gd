extends Node2D

var coffee_entered :bool = false

@onready var button:Button = $Button
@onready var times :int = 1
@onready var runtime :int = 10
@onready var label :Label = $Label

func get_child_from_other_scene() -> void:
	var cof = preload("res://Scenes/coffe_bean.tscn").institiate()
	var cofb = cof.get_node(".")
	cofb.add_to_group("b")
	cof.add_to_group("b")

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("b"):
		coffee_entered = true
	else :
		coffee_entered = false

func _on_button_pressed() -> void:
	label.text = "Pressed time =" +str(times)
	times += 1
	if coffee_entered:
		if times > runtime:
			label.text = "Congrat" 
	else:
		if  times > runtime:
			label.text = "Max"
