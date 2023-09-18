extends Node2D

signal timeover

var time = 10

func _process(_delta):
	var lbl = get_node("Label")
	lbl.text = str(time)


func _on_timer_timeout():
	print("Decreasing time")
	time -= 1
	if time == 0:
		timeover.emit()
		set_process(false)
