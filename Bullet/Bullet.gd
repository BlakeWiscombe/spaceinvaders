#The script runs for each bullet fired by the player
#Shoots the bullet up
#Detects collisions with enemies
#Hits the top removes bullet
#Updates the score by 10 when an enemy is hit

extends KinematicBody2D


var speed = 500
func _ready(): #Sets the physics on the player bullet
	set_physics_process(true)

func _physics_process(delta):#Enables the physics properties to be changed
	var collidedObject = move_and_collide(Vector2(0 ,-speed*delta)) #Speed of the bullet 
	if (collidedObject): #Detects a collision with enemies 
		print(collidedObject.collider.name)
		if "Enemy" in collidedObject.collider.name:
			collidedObject.get_collider().queue_free()
			GlobalVariables.scoringInformation["currentScore"] +=10 #Calls upon Global Variables to update the score by 10
			print (GlobalVariables.scoringInformation["currentScore"])
		queue_free()		
