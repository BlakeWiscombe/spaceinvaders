extends Button

export (String) var scene_to_load



func _on_Options_pressed():
	get_tree().change_scene("res://Options/OptionsMenu.tscn")
