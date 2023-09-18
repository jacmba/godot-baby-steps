extends Node2D

var speed = 300
var angular_speed = PI

func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta


func _on_button_pressed():
	print("Button clicked!")
	set_process(not is_processing())
