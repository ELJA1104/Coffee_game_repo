extends Area2D

@onready var label1 = get_node("../Label")
@onready var label :Label = label1


var percent :float = 99
var a :bool = true
@onready var puck = preload("res://Scenes/Ethan's_Puck.tscn")

func set_true():
	a = true


func _on_extract_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("puck"):
		if a:
			var puck2 = puck.instantiate()
			puck2.is_empty = false
