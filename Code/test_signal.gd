extends Node2D

@onready var a1 = load("res://Scenes/idk.tscn")

func _ready() -> void:
	var idk = a1.instantiate()
	var a2 = idk.get_node("Area2D")
	a2.tcup.connect(a)
	add_child(idk)
func a(grinder_position):
	print(grinder_position)
