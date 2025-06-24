extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func fade(speed, fadein):
	$AnimationPlayer.speed_scale = speed
	if fadein:
		$AnimationPlayer.play("fade")
	else:
		$AnimationPlayer.play_backwards("fade")
	
	await $AnimationPlayer.animation_finished
	
	#$AnimationPlayer.animation_finished("fade")
