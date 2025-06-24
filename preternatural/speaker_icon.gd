extends TextureRect

@export var may = false
@export var ben = false

func _ready() -> void:
	pass



func _process(delta: float) -> void:
	pass

func display_icons():
	$icons/may.hide()
	$icons/ben.hide()
	if may:
		$icons/may.show()
	if ben:
		$icons/ben.show()
	
	var in_use = false
	for i in $icons.get_children():
		if i.visible == true:
			in_use = true
	
	if in_use:
		show()
	else:
		hide()

func clear_selection():
	may = false
	ben = false
