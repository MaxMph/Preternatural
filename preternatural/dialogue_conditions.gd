extends Node

var main

var found_ladder = false

func _ready() -> void:
	main = get_tree().get_first_node_in_group("main")


#func show_ladder():
	#get_tree().get_first_node_in_group("main")
