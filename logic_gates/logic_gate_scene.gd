extends Node2D

@export var logic_gate:LogicGate
@onready var gate_name: Label = %Name
@onready var gate_body: Panel = %Body
@onready var draggable: Area2D = %Draggable

func _ready() -> void:
	gate_name.text = logic_gate.gate_name
	gate_body.size = gate_name.size
	draggable.set_size(gate_name.size)
	print(gate_name.size)
	
