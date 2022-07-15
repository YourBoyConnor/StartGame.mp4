extends Control

func _ready():
	var resource = preload("res://Dialogue/dialogue.tres")
	Interface.dialogue_balloon(
		"start_room",
		resource
	)

func change_bg(path: String) -> void:
	$BG/TextureRect.set_texture(load(path))
	yield(get_tree().create_timer(3.0), "timeout")
