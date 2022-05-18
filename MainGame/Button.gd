#this script runs every time that the 'main menu' button is pressed
#once pressed this script takes the player back to the main menu
extends Button


func _on_main_menu_pressed():
	get_tree().change_scene("res://menu/Menu.tscn")
