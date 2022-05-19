#this script runs everytime the player presses the button
extends Button



func _on_main_menu_pressed(): #this allows the action of pressing a button
	get_tree().change_scene("res://menu/Menu.tscn") #the determined scene to display on screen when the button is pressed
