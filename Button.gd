#The retry button to return to the main game
extends Button


func _on_Retry_pressed(): #Determines what the retry button does
	get_tree().change_scene("res://MainGame/MainGame.tscn") #Changes the scene to the mian game on the button pressed
