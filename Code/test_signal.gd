extends Node2D


func _ready() -> void:
	Noel_sEvent.connect("cup_tp_permition",a)

func a(_grinder_position):
	print("a")
