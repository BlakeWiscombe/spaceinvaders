extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_return_pressed():
	get_tree().change_scene("res://menu/Menu.tscn")
