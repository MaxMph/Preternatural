extends CharacterBody2D


const speed = 310.0
var fric = 290
var acc = 480


func _physics_process(delta: float) -> void:

	var direction := Input.get_axis("leftclick", "rightclick")
	if direction:
		velocity.x =  move_toward(velocity.x, direction * speed, acc * delta)# direction * speed * delta
	else:
		velocity.x = move_toward(velocity.x, 0, fric * delta)

	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("wall"):
		print("colliding")
		get_tree().reload_current_scene()
		queue_free()
	if body.is_in_group("endline"):
		get_tree().get_first_node_in_group("main").start_attack()
		get_tree().reload_current_scene()
