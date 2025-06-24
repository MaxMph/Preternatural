extends Node2D

@export var next_scene1: PackedScene
@export var next_scene2: PackedScene

func switch_scene():
	get_tree().change_scene_to_packed(next_scene1)
