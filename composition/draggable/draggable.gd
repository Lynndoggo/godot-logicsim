extends Area2D

func _ready() -> void:
	var collision_shape_2d: CollisionShape2D = %CollisionShape2D
	collision_shape_2d.shape.size = get_parent().get_node("Body").size




func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	get_parent().get_node("Body").position = get_viewport().get_mouse_position()
