extends Node2D

var grinder_closing_act : bool = true
var coffee_entered :bool = false
var time:int = 60
@onready var button:Button = $Button
@onready var label :Label = $Label
@onready var grinder_open =$Grinder2
@onready var grinder_close =$Grinder1
@onready var Input_time = $input_time
@onready var grinding = $grinding


func _ready() -> void:
	$Grinder2/opening_button.modulate.a = 0
	$Grinder1/closing_button.modulate.a = 0
	grinder_closing_act = true
	visible()
	label.visible_characters = 0
	label.text = "Not started yet"
	for i in range(0,16):
		label.visible_characters += 1
		await get_tree().create_timer(0.05).timeout


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("coffee bean"):
		coffee_entered = true
		label.visible_characters = 0

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("coffee bean"):
		coffee_entered = false
		_ready()

func _on_button_pressed() -> void:
	if coffee_entered:
		$grinding.start()
		$input_time.start()


func _on_grinding_timeout() -> void: #for grinding
	label.visible_characters = 0
	await get_tree().create_timer(0.5).timeout
	get_tree().call_group("idk", "a")
	label.text = "Congrat!"
	for i in range(0,9):
		label.visible_characters += 1
		await get_tree().create_timer(0.05).timeout
	grinding.stop()
	only_congrat()


func only_congrat():
	label.text = "Congrat! "

func _on_input_time_timeout() -> void: #for input_time
	label.text= "Please wait for 
	"+ str(time)+ " seconds"
	time -= 1
	for i in range(0,36):
		label.visible_characters += 1
		await get_tree().create_timer(0.05).timeout
	if time >= 0:
		Input_time.stop()
		return


func _on_closing_button_pressed() -> void:
	grinder_closing_act = false
	visible()

func _on_opening_button_pressed() -> void:
	grinder_closing_act = true
	visible()

func visible():
	if grinder_closing_act:
		grinder_close.show()
		grinder_open.hide()
	else:
		grinder_close.hide()
		grinder_open.show()
