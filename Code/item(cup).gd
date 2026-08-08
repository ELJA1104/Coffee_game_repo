extends CharacterBody2D
class_name Cup_node
var ice_cube
var when_is_grab_cup : bool = false
var mouse_inside_cup : bool = false
var can_add_things : bool = false
@export var Progress_Bar_cup : ProgressBar
@export var Text_label : Label
var flavour : String
var temp : String
var ran_ice  = 0
var ran_drink = 0


func _ready():
	add_to_group("cup")
	$Area2D.body_entered.connect(_on_area_2d_body_entered)
	$Area2D.body_exited.connect(_on_area_2d_body_exited)
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	Progress_Bar_cup.hide()
	drink_select()
	hot_or_iced()
	text_to_be_displayed(temp + flavour )
	



func _process(_delta):
	if when_is_grab_cup:
		var _mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,_mouse_pos,0.2)
		return

	if can_add_things and Progress_Bar_cup.visible:
		if Progress_Bar_cup.value < Progress_Bar_cup.max_value:
			Progress_Bar_cup.value += 0.5
		else:
			if _ingredians == 1 :
				print('ice done')
				Progress_Bar_cup.hide()
				Progress_Bar_cup.value = 0
				can_add_things = false 
				ran_ice += 1
				hot_or_iced()
				ice_cube.tp_to_spwaner()





func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and mouse_inside_cup:
			when_is_grab_cup = true
		else:
			when_is_grab_cup = false
			
func _on_mouse_entered():
	mouse_inside_cup = true
	

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
var _ingredians 
#ice cube = 1
func _on_area_2d_body_entered(body):
	can_add_things = true
	Progress_Bar_cup.show()
	print(body.name)
	if body.is_in_group("ice cube"):
		_ingredians = 1
	if body is Ice_cube_node:
		ice_cube = body

func _on_area_2d_body_exited(body):
	can_add_things = false
	Progress_Bar_cup.hide()
	Progress_Bar_cup.value = 0
	print(body.name)
	print('is go out')



#======================================================================
var adding_milk
func drink_select():
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


func hot_or_iced():
	if ran_ice == 0:
		print('hot')
		temp = "Hot "
	elif ran_ice == 1:
		print('normal')
		temp = "Warm "
	elif ran_ice == 2:
		print('cold')
		temp = "Cold "

	if temp == "Cold " and flavour == "Water":
		temp = "Cold  "
	if temp == "Hot " and flavour == "Water":
		temp = "Hot  "
	text_to_be_displayed(temp + flavour )
	
func displaying_text():
	Text_label.visible_characters= 0
	for i in Text_label.text.length():
		Text_label.visible_characters += 1
		await get_tree().create_timer(0.03).timeout
		
func text_to_be_displayed(text : String):
	Text_label.text = text
	displaying_text()

#=============================================================









#signal tcup(global_position: Vector2)

#func tp_cup():
	#tcup.emit(global_position)
	#cup.tp_tcup()

	
	
	
