extends Node2D

var coffee_entered :bool = false
var time:int = 0
@onready var button:Button = $Button
@onready var label :Label = $Label

func _ready() -> void:
	label.text = "Not started yet"

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("coffee bean"):
		coffee_entered = true
	else:
		coffee_entered = false



func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("coffee bean"):
		coffee_entered = false

func _on_button_pressed() -> void:
	if coffee_entered:
		$grinding.start()
		$input_time.start()
	else:
		pass

func _on_grinding_timeout() -> void: #for grinding
	get_tree().call_group("idk", "a")

func _on_input_time_timeout() -> void: #for input_time
	label.text = "Please wait for "+ str(time)
	time += 1
