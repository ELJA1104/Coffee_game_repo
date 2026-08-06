extends Area2D

@onready var label1 = get_node("../Label")
@onready var label :Label = label1
@export var puck = Ethan_Puck


var percent :float = 99
var a :bool = true


func set_true():
	a = true


func _on_extract_area_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("puck"):
		if a:
			body.is_empty = false
