extends Node

var main

#outside scene
var found_ladder = false

#afterfall
var may_convo1 = false
var explored = false

func _ready() -> void:
	main = get_tree().get_first_node_in_group("main")


#func show_ladder():
	#get_tree().get_first_node_in_group("main")
