extends BaseDialogueTestScene

@export var dialogue_res:DialogueResource
var balloonscene = preload("res://balloon.tscn")
var balloon

func _ready() -> void:
	add_balloon()
	#may_dialogue()
	$ExampleBalloon.start(dialogue_res, "intro")

func may_dialogue():
	add_balloon()
	print("works")
	balloon.start(dialogue_res, "may_convo")

func add_balloon():
	var new_balloon = balloonscene.instantiate()
	add_child(new_balloon)
	balloon = new_balloon
