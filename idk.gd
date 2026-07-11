extends Control


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
