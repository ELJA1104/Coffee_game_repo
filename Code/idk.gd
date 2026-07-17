extends Node2D

var coffee_entered :bool = false

@onready var button:Button = $Button
@onready var times :int = 1
@onready var runtime :int = 10
@onready var label :Label = $Label


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("coffee bean"):
		coffee_entered = true
	else:
		coffee_entered = false


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("coffee bean"):
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
