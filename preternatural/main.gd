extends Node2D

@export var next_scene1: PackedScene
@export var dialogue_res:DialogueResource
var balloonscene = preload("res://balloon.tscn")
var balloon
@export var auto_start = false


func _ready() -> void:
	#add_balloon()
	if auto_start == true:
		start_dialogue("intro")
		#balloon.start(dialogue_res, "intro")


func add_balloon():
	var new_balloon = balloonscene.instantiate()
	add_child(new_balloon)
	balloon = new_balloon

func start_dialogue(startpoint):
	if balloon == null:
		add_balloon()
		balloon.start(dialogue_res, startpoint)


func switch_scene():
	await $overlay.fade(1.6, true)
	
	#get_tree().change_scene_to_file("res://postfall_scene.tscn")
	#get_tree().change_scene_to_file("res://roof_scene.tscn")
	#await get_tree().create_timer(1.0).timeout
	get_tree().change_scene_to_packed(next_scene1)

func show_ladder():
	$"Ladder-removebg-preview".show()
