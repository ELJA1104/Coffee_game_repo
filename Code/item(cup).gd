extends CharacterBody2D
class_name Cup_node
var when_is_grab_cup : bool = false
var mouse_inside_cup : bool = false
var can_add_things : bool = false
var hot_water_protocol : bool = false
@export var Progress_Bar_cup : ProgressBar
@export var ice : Node2D
@export var Text_label : Label
var flavour : String
var temp : String

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	Progress_Bar_cup.hide()
<<<<<<< HEAD
	Noel_sEvent.ice_hidden_permition.connect(tp_cup)
=======
	drink_select()
	text_to_be_displayed(temp + flavour)

>>>>>>> 25b0a94dafae371f2bca845f91aee053d2493aa5

func _process(_delta):
	if when_is_grab_cup:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return





func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and mouse_inside_cup:
			when_is_grab_cup = true
		else:
			when_is_grab_cup = false
			
func _on_mouse_entered():
	mouse_inside_cup = true
	show_label()

func _on_mouse_exited():
	mouse_inside_cup = false
	
	


#========================================================================================

func cup_fill():
	Progress_Bar_cup.show()
	Progress_Bar_cup.value += 0.5
	pass
	
func cup_stop_fill():
	Progress_Bar_cup.show()
	Progress_Bar_cup.value += 0
	pass
	
func cup_return_to_zero():
	Progress_Bar_cup.hide()
	Progress_Bar_cup.value = 0
	pass
#=================================================================================================================================================================
func no_in():
	can_add_things = false
	print('stop add things *2')
	
func ice_in():
	can_add_things = true
	await get_tree().create_timer(3).timeout
	if can_add_things:
		Noel_sEvent.ice_hidden_permition.emit() 
		Progress_Bar_cup.show()
		while Progress_Bar_cup.value < Progress_Bar_cup.max_value:
			Progress_Bar_cup.value += 0.5
			await get_tree().create_timer(0.05).timeout
		print('ice done')
		add_to_group("add_label:ice")
		Progress_Bar_cup.hide()
		Progress_Bar_cup.value = 0
	else:
		pass
	
func milk_in():
	can_add_things = true
	await get_tree().create_timer(3).timeout
	if can_add_things:
		Noel_sEvent.milk_hidden_permition.emit() 
		Progress_Bar_cup.show()
		while Progress_Bar_cup.value < Progress_Bar_cup.max_value:
			Progress_Bar_cup.value += 0.5
			await get_tree().create_timer(0.05).timeout
		print('milk done')
		add_to_group("add_label:milk")
		Progress_Bar_cup.hide()
		Progress_Bar_cup.value = 0
	else:
		pass
		
func sugar_in():
	can_add_things = true
	await get_tree().create_timer(3).timeout
	if can_add_things:
		Noel_sEvent.sugar_hidden_permition.emit() 
		Progress_Bar_cup.show()
		while Progress_Bar_cup.value < Progress_Bar_cup.max_value:
			Progress_Bar_cup.value += 0.5
			await get_tree().create_timer(0.05).timeout
		print('sugar in')
		add_to_group("add_label:sugar")
		Progress_Bar_cup.hide()
		Progress_Bar_cup.value = 0
	else:
		pass
		
#======================================================================
func show_label():
	pass
#====================================================================
func tp_cup(cup):
	global_position = cup
#========================================================
<<<<<<< HEAD
func blablabla():
	Noel_sEvent.cup_tp_permition.emit(global_position) 
=======
func drink_select():
	var ran_drink = randi_range(0,6)
	if ran_drink == 0:
		flavour = "Water"
	elif ran_drink == 1:
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
	var ran_ice = randi_range(0,1)
	if ran_ice == 0:
		temp = "Hot "
	elif ran_ice == 1:
		temp = "Iced "
	if temp == "Iced " and flavour == "Water":
		temp = "Hot "
	if temp == "Hot " and flavour == "Water":
		hot_water_protocol = true
func displaying_text():
	Text_label.visible_characters= 0
	for i in Text_label.text.length():
		Text_label.visible_characters += 1
		await get_tree().create_timer(0.03).timeout
		
func text_to_be_displayed(text : String):
	Text_label.text = text
	displaying_text()

>>>>>>> 25b0a94dafae371f2bca845f91aee053d2493aa5
#=============================================================









#signal tcup(global_position: Vector2)

#func tp_cup():
	#tcup.emit(global_position)
	#cup.tp_tcup()

	
	
	
