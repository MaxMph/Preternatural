extends Area2D


#@export var event_node: Control
@export var startpoint: String

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		#event_node.triggered()
		get_parent().get_parent().start_dialogue(startpoint)
