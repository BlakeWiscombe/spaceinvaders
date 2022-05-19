#this script runs for every press of the retry button
#when the player loses this screen will show giving them the option to retry the level
extends Control


#this function calls the 'main game' 
#the scene change only occurs when the button is pressed
func _on_retry_pressed():
	get_tree().change_scene("res://MainGame/MainGame.tscn")
