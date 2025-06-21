extends Node

@onready var bg_sounds:Dictionary = {
	"nature": $nature1,
	#"industrial": AudioStreamPlayer,
}

var tracks: Dictionary = {
	1: null,
	2: null,
	3: null,
	4: null,
}
#var main_sound
#var secondary
var audio_queued


func _ready() -> void:
	pass
	

func _process(delta: float) -> void:
	pass

func change_audio(sound, track):
	audio_queued = bg_sounds[sound]
	if tracks[track] == null:
		tracks[track] = audio_queued
	else:
		pass

func play_sound(sound):
	audio_queued = bg_sounds[sound]
	audio_queued.v
	bg_sounds[sound].play
