extends Sprite2D

var speed = 0.0
var maxspeed = 180
var acc = 400
var fric = 80

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_pressed("leftclick"):
			#speed -= acc
	var dir = Input.get_axis("leftclick", "rightclick")
	if dir:
		#print(dir)
		speed += dir * acc * delta
	else:
		speed = move_toward(speed, 0, fric * delta)
	
	global_position.x += speed * delta
	
	var array = []
	#array.size()
	
	#if $Area2D.get_overlapping_bodies().size() > 0:
		#for i in $Area2D.get_overlapping_bodies():
			#if i.is_in_group("wall"):
				#get_tree().reload_current_scene()
			#if i.is_in_group("endline"):
				#get_tree().reload_current_scene()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("wall"):
		print("colliding")
		get_tree().reload_current_scene()
		queue_free()
	if body.is_in_group("endline"):
		get_tree().get_first_node_in_group("main").start_attack()
		get_tree().reload_current_scene()


func _on_area_2d_body_exited(body: Node2D) -> void:
	print("exit")
