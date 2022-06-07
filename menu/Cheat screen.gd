extends Button


export (String) var scene_to_load

# Called when the node enters the scene tree for the first time.
func _on_Cheat_screen_pressed():
	get_tree().change_scene("res://Cheat screen.tscn")
