#the below script runs everytime that the player presses the 'rapid fire' button
extends Control

#this function determines when to activate rapid fire
#when the button is pressed the rapid fire option activates allowing the player to hold down fire and continue to shoot
func _ready():
	$Layout/RapidFireSelect.pressed = GlobalVariables.rapidFire
	
