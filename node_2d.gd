extends CharacterBody2D
@export var btn : Button
@export var Text_label : Label
var dragged : bool = false
var Offset : Vector2 = Vector2(0,0)
var flavour : String

func _on_button_button_down() -> void:
	dragged = true
	Offset = get_global_mouse_position() - self.global_position

func _on_button_button_up() -> void:
	dragged = false
	
func _process(delta: float) -> void:
	if dragged == true:
		self.global_position = lerp(global_position, get_global_mouse_position(), 0.5) - Offset  

func _ready() -> void:
	drink_select()
	text_to_be_displayed(flavour)
func drink_select():
	var ran_drink = randi_range(1,6)
	if ran_drink == 1:
		flavour = "Americano"
	elif ran_drink == 2:
		flavour = "Cappuccino"
	elif ran_drink == 3:
		flavour = "Espresso"
	elif ran_drink == 4:
		flavour = "Macchiato"
	elif ran_drink == 5:
		flavour = "Mocha"
	elif ran_drink == 6:
		flavour = "Latte"
		
func displaying_text():
	Text_label.visible_characters= 0
	for i in Text_label.text.length():
		Text_label.visible_characters += 1
		await get_tree().create_timer(0.03).timeout
		
func text_to_be_displayed(text : String):
	Text_label.text = text
	displaying_text()
