extends Node2D

var b:int = 1
@onready var label:Label = $Label

func _ready() -> void:
	for i in range(0,b):
		label.text = "a"+str(b)
		b += 1
		await get_tree().create_timer(0.01).timeout
