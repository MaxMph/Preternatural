extends CanvasLayer

var clickscale = 0.8

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Node2D.global_position = get_viewport().get_mouse_position()
	

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			$Node2D.scale = Vector2(clickscale, clickscale)
			#$Node2D/Sprite2D2.show()
			#$Node2D/Sprite2D.hide()
		else:
			$Node2D.scale = Vector2(1.0, 1.0)
			#$Node2D/Sprite2D2.hide()
			#$Node2D/Sprite2D.show()
