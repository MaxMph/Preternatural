extends Area2D


#@export var event_node: Control

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print("works")
	if event is InputEventMouseButton:# and event.pressed:# and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("works2")
		$"..".may_dialogue()
		#$"../ExampleBalloon".
		#event_node.triggered()
