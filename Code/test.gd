extends Node2D
@export var Pug_detec : Area2D
@export var Cup_detec : Area2D
@export var Cup_detection_value : int = 0
@export var cup_tp_pos: Node2D
@export var puck_tp_pos: Node2D
@export var Text_label : Label
var B : String
var is_filling : bool = false
var is_full : bool = false
var coffee_flavour
var Puck_detec : bool = false

func _physics_process(delta: float) -> void:
	if cup:
		if is_filling == true:
			cup.cup_fill()
			
		elif is_filling == false:
			cup.cup_stop_fill()
			
		if cup.Progress_Bar_cup.value == 100:
			is_full = true
			
	if is_full == true:
		if Puck_detec == true:
			text_to_be_displayed("Your cup of " + coffee_flavour + " has been brewed")
		elif Puck_detec == false:
			text_to_be_displayed("Your cup of hot water has been brewed")
	elif is_full == false:
		pass

func _on_start_button_pressed() -> void:
	if Cup_detection_value == 1:
		print("start button is pressed")
		is_filling = true
		
		text_to_be_displayed("Filling process has started")
	elif Cup_detection_value== 0:
		print("Something is missing!")
		text_to_be_displayed("Cup has not been detected")

func _on_stop_button_pressed() -> void:
	print("stop button is pressed")
	Cup_detection_value == 0
	is_filling = false

	text_to_be_displayed("Filling process has stopped")
	
var cup
func _on_cup_detection_body_entered(body: Node2D) -> void:
	cup = body
	print("Cup has been detected")
	Cup_detection_value = 1
	print(Cup_detection_value)
	text_to_be_displayed("Cup has been detected")
	
func _on_cup_detection_body_exited(body: Node2D) -> void:
	cup = 0
	print("Cup has left")
	Cup_detection_value = 0
	print(Cup_detection_value)
	text_to_be_displayed("Cup has been taken away")
	is_filling = false
	is_full = false
	
func displaying_text():
	Text_label.visible_characters= 0
	for i in Text_label.text.length():
		Text_label.visible_characters += 1
		await get_tree().create_timer(0.03).timeout
		
func text_to_be_displayed(text : String):
	Text_label.text = text
	displaying_text()

func _on_puck_detection_body_entered(body: CharacterBody2D) -> void:
	coffee_flavour = body.flavour
	Puck_detec = true
	text_to_be_displayed("Puck has been detected")
	await get_tree().create_timer(2).timeout
	text_to_be_displayed("Coffee flavour is " + coffee_flavour)
	
func _on_puck_detection_body_exited(body: CharacterBody2D) -> void:
	Puck_detec = false
	text_to_be_displayed("Puck has been taken away")
