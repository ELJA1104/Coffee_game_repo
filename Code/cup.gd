extends Node2D
@export var ice : CharacterBody2D
@export var Text_label : Label
@export var Progress_Bar_cup : ProgressBar

func _ready():
	add_to_group("cup")
	$Area2D.body_entered.connect(_on_area_2d_body_entered)


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




func add_ice():
	print("lkkjgjgidhs")
	Progress_Bar_cup.show()
	Progress_Bar_cup.value += randf_range(5.0, 10.0)
	textc("The ice is filling")
	if Progress_Bar_cup.value >= Progress_Bar_cup.max_value:
		stop_add_ice()
		pass
		
func stop_add_ice():
	Progress_Bar_cup.hide()
	textc("The ice is full")
	pass


func _on_area_2d_body_entered(body):
	add_ice()
