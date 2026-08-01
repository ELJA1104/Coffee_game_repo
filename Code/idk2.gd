extends Area2D

signal tcup(grinder_position : Vector2)

func a():
	emit_signal("tcup",global_position)
