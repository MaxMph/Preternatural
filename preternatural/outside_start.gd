extends Node2D

@export var dialogue_res:DialogueResource
var balloonscene = preload("res://balloon.tscn")
var balloon

func _ready() -> void:
	add_balloon()
	balloon.start(dialogue_res, "intro")


func add_balloon():
	var new_balloon = balloonscene.instantiate()
	add_child(new_balloon)
	balloon = new_balloon

func start_dialogue(startpoint):
	if balloon == null:
		add_balloon()
		balloon.start(dialogue_res, startpoint)

func show_ladder():
	$"Ladder-removebg-preview".show()
