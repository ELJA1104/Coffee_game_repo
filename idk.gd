extends Node2D

<<<<<<< HEAD
=======

>>>>>>> 945a75bdd4b009fcf7ebc47764074a6ff0f61815
@onready var label :Label =$Label
@onready var button:Button = $Button
@onready var times :int = 1
@onready var runtime :int = 10

func _process(_delta: float) -> void:
	button.pressed.connect(_on_button_pressed)

func _on_button_pressed() -> void:
	label.text = "time pressed ="+str(times)
	times += 1
	if times > runtime:
		label.text = "time pressed = 10"






func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
