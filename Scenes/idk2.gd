extends Area2D

signal tcup(grinder_position:Vector2)

func a():
	tcup.emit(self.global_position)
