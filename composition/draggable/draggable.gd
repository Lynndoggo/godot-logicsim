extends Area2D

var selected = false


func set_size(size:Vector2):
	var collision_shape_2d: CollisionShape2D = %CollisionShape2D
	collision_shape_2d.shape.size = size

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("left_click") and not db.smth_dragged:
		selected = true
		db.smth_dragged = true

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
			selected = false
			db.smth_dragged = false

func _physics_process(delta: float) -> void:
	if selected:
		get_parent().global_position = lerp(get_parent().global_position, get_global_mouse_position(), 25*delta)
