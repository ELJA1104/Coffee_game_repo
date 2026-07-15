extends Node2D

var coffee_entered :bool = false

@onready var button:Button = $Button
@onready var times :int = 1
@onready var runtime :int = 10
@onready var cup :Node2D = $cup
@onready var label :Label = $Label
signal tp_cup

func _process(_delta: float) -> void:
	button.pressed.connect(_on_button_pressed)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("coffe bean"):
		coffee_entered = true
	else :
		coffee_entered = false

func _on_button_pressed() -> void:
	label.text = "Pressed time =" +str(times)
	times += 1
	if coffee_entered:
		if times > runtime:
			tp_cup.emit()
			tp_cup.connect(cup.teleport_cup_to_grinder)
			label.text = "Congrat" 
	else:
		if  times > runtime:
			label.text = "Max"
