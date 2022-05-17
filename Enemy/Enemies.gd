#The Speed of the enemies
#Movement from left to right side of the screen
extends Node2D

var speed = 100

func _ready():
	set_physics_process(true)
	
	
func _physics_process(delta):
	global_position.x  += speed * delta
