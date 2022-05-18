#this script holds certain information and feedback from the game and stores the information in an array
extends Node

var rapidFire = false

var saveFile = "user://save.dat"

var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0


var previousScores = []

#the information held here is the top three high scores
#this part of the script holds the current score of the current game
var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScores": [0,0,0],
	"highScorePlayersName" : "Winner"
}
