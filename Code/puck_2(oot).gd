extends Node2D
@export var Text_label : Label
@export var Area_2D : Area2D

func _ready():
	add_to_group("cup")
	Area_2D.body_entered.connect(_on_area_2d_body_entered)


func hide_cup():
	get_node('item(cup)').visible = false
	
func show_cup():
	get_node('item(cup)').visible = true


func displaying_text():
	Text_label.visible_characters= 0
	for i in Text_label.text.length():
		Text_label.visible_characters += 1
		await get_tree().create_timer(0.03).timeout

func textc(text : String):
	Text_label.text = text
	displaying_text()


func _on_area_2d_body_entered(body):
	pass
