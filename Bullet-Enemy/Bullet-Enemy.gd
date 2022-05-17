#This script runs for each enemy bullet that's instantiated 
#Shoots the bullet down
#Detects collisions if enemy object - ignore. 
#Hits the bottom removes bullet 

extends KinematicBody2D

var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready(): #Calling on the global variables to export the enemy bullet
	GlobalVariables.enemyBulletInstanceCount += 1 #The global variables have been called and adds a new bullet for the enemies 
	set_physics_process(true) #This adds the physics for the each new bullet that is created


func _physics_process(delta): #Starts the set up of physics for the bullet
	var collidedObject = move_and_collide(Vector2(0, +speed*delta*0.4)) #Speed for the bullet
	if (collidedObject): #If the bullet detects a collision
		print("Enemy collide: ",collidedObject.collider.name)
		if "Enemy" in collidedObject.collider.name:
			pass
			collidedObject.get_collider().queue_free() #Don't kill the enemies.
		else:
			queue_free()
			GlobalVariables.enemyBulletInstanceCount -= 1
			print("Enemy Bullets: ", GlobalVariables.enemyBulletInstanceCount)
