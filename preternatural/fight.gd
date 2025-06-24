extends Node2D

@export var sprite:Sprite2D
var fallspeed = 0.0
#var max_fallspeed = 200
#var fall_acc = 20

var max_fallspeed = 400
var fall_acc = 14

@onready var playerscene = preload("res://player.tscn")
var player_instloc = Vector2(588.0, 418.0)

#states
var falling = true
var attacking = false


func _ready() -> void:
	start_fall()


func _process(delta: float) -> void:
	if falling == true:
		#print(fallspeed)
		$CanvasLayer/TextureRect2/AnimationPlayer.speed_scale = 0.8 + fallspeed/ max_fallspeed
		sprite.global_position.y += -fallspeed * delta
		if fallspeed < max_fallspeed:
			fallspeed += fall_acc * delta
	if attacking == true:
		pass

func start_attack():
	$CanvasLayer/Fall1.hide()
	attacking = true
	falling = false

func start_fall():
	$CanvasLayer/Fall1.show()
	var player = playerscene.instantiate()
	$CanvasLayer.add_child(player)
	player.position = player_instloc	
	attacking = false
	falling = true
	
	
