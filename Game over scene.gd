#the retry button that returns the player back to the main game when certain conditions are met.
extends Control



func _on_retry_pressed():
	get_tree().change_scene("res://MainGame/MainGame.tscn")
