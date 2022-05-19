#this script runs everytime that the plauyer presses the retry button
extends Control


#this function calls the 'main game' 
#the scene change only occurs when the button is pressed
func _on_retry_pressed():
	get_tree().change_scene("res://MainGame/MainGame.tscn")
