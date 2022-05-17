#The Speed of the enemies
#Movement from left to right side of the screen
extends Node2D

var speed = 100

func _ready(): #this function determines that the enemies will have physics (Movement)
	set_physics_process(true)
	
	
func _physics_process(delta): #this function is the movement speed of the enemies
	global_position.x  += speed * delta
