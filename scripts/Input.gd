extends Node2D

var speed = 400
var angular_speed = PI

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_key_pressed(KEY_UP):
		velocity = Vector2.UP.rotated(rotation).normalized() * speed * delta
	if Input.is_key_pressed(KEY_DOWN):
		velocity = Vector2.DOWN.rotated(rotation).normalized() * speed * delta
		
	position += velocity
	
	var turn = 0
	if Input.is_key_pressed(KEY_LEFT):
		turn = -1
	if Input.is_key_pressed(KEY_RIGHT):
		turn = 1
		
	rotation += turn * angular_speed * delta
