extends Node


func dialogue_balloon(title: String, local_resource: DialogueResource = null) -> void:
	var dialogue = yield(DialogueManager.get_next_dialogue_line(title, local_resource), "completed")
	if dialogue != null:
		var balloon = preload("res://text_balloon/balloon.tscn").instance()
		balloon.dialogue = dialogue
		get_tree().current_scene.add_child(balloon)
		dialogue_balloon(yield(balloon, "actioned"), local_resource)
