#this script will run everytime that this button is pressed 
#this script will changes the scenes for the player 
extends Button



func _on_main_menu_pressed(): #this allows the action of pressing a button
	get_tree().change_scene("res://menu/Menu.tscn") #the determined scene to display on screen when the button is pressed
