extends Node2D
@export var exit_point : Node2D
var customer_scene
var customer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	customer_scene = preload("res://Scenes/customers.tscn")
	customer = customer_scene.instantiate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	get_tree().root.add_child(customer)
	customer.global_position = self.global_position
	var customer_speed = randf_range(1,2)
	customer.linear_velocity = (exit_point.global_position - self.global_position) * customer_speed
