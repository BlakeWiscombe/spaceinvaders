#this script will run everytime that this button is pressed 
#this script will changes the scenes for the player 
extends Button



func _on_main_menu_pressed():
	get_tree().change_scene("res://menu/Menu.tscn")
