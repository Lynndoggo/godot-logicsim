extends Node2D

@onready var logic_gate_scene = preload("res://logic_gates/logic_gate_scene.tscn")

@onready var circuit_select: TabBar = %CircuitSelect
var selected_circuit:int = 0

func _ready() -> void:
	for logic_gate in db.logic_gates:
		#Adding Logic Gate to Tabs
		var logic_gate_resource = db.logic_gates[logic_gate]
		var logic_gate_name = logic_gate_resource.gate_name
		var logic_gate_description = logic_gate_resource.gate_description
		circuit_select.add_tab(logic_gate_name)
		circuit_select.set_tab_tooltip(logic_gate,logic_gate_description)

func _on_circuit_select_tab_changed(tab: int) -> void:
	selected_circuit = tab

func _on_spawn_circuit_pressed() -> void:
	var logic_gate_instance = logic_gate_scene.instantiate()
	logic_gate_instance.logic_gate = db.logic_gates[selected_circuit]
	add_child(logic_gate_instance)
	
