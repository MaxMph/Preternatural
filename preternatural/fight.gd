extends Node2D

@export var sprite:Sprite2D
var fallspeed = 0.0
var max_fallspeed = 200
var fall_acc = 20


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	print(fallspeed)
	sprite.global_position.y += -fallspeed * delta
	if fallspeed < max_fallspeed:
		fallspeed += fall_acc * delta
