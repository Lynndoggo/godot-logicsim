extends Node

#circuits only draggable when nothing else is dragged (to prevent dragging multiple circuits at once)#
var smth_dragged = false 

var logic_gates = {}

func _ready() -> void:
	var dir = DirAccess.open("res://logic_gates/resources/")
	var id = 0
	for file_name in dir.get_files():
		var resource = load("res://logic_gates/resources/"+file_name)
		logic_gates[id] = resource
		id+=1
