extends Area2D

@onready var label1 = get_node("../Label")
@onready var label :Label = label1

var percent :float = 99



func _on_extract_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("puck"):
		minus()
		for i in range(0,200):
			get_tree().call_group("puck","fill_puck")
			await get_tree().create_timer(0.5).timeout


func minus():
	for i in range(0,100):
		percent -= 1
		await get_tree().create_timer(1).timeout
		label.text = str(percent)+ "/100"
