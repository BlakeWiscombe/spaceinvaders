#everytime that the game is opened this script will run
#the information for the countdown timer is held here
#what happens when the timer runs out
#what information determines if the player has won or not
extends Control

export(int) var countdownMax
var currentTimer
# Called when the node enters the scene tree for the first time.

#this function counts an internal timer down
#when the timer reaches 0 and all enemies are not defeated, the player loses
#when the player loses, the current scene changes to the 'lose' screen
func _ready():
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
	print ("Game Over")
	get_tree().change_scene("res://Game over scene.tscn")

	GlobalVariables.previousScores.push_front( GlobalVariables.scoringInformation["currentScore"])
	print(GlobalVariables.previousScores)

#this function looks through the active game data to play the win scene when all enemies are defeated 
#if the 'enemy' group is no longer active, the player wins
func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if get_tree().get_nodes_in_group("enemy").size() == 0:
		get_tree().change_scene("res://WinScene.tscn")
