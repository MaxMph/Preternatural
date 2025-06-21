extends Control

@export var lines: Array[String]
@onready var text_display = $"HBoxContainer/AspectRatioContainer/bg box/RichTextLabel"
var line_index = 0
@export var dont_reset = false
@export var auto_trigger = false

var discovered = false
@export var required_discoveries: Array[Node2D]

@export_category("speaker icons")
@export var ben = false
@export var may = false

func _ready() -> void:
	if auto_trigger:
		triggered()


func _process(delta: float) -> void:
	pass
func triggered():
	if Global.in_menu == false:
		show()
		_showline()
		show_speakericons()

func _showline():
	if lines.size() > line_index:
		text_display.text = lines[line_index]
		line_index += 1
	else:
		close()

func close():
	hide()
	if dont_reset == false:
		line_index = 0

func _on_continue_pressed() -> void:
	_showline()

func show_speakericons():
	if ben:
		$HBoxContainer/speaker_icon.ben
	if may:
		$HBoxContainer/speaker_icon.may
	$HBoxContainer/speaker_icon.display_icons()
