#The script for each enemy instance of enemies
#When the group of enemies hits either the left or right border thy change direction and move the other way until the other border is hit, this continues until the game is over
extends KinematicBody2D

var bullet = preload("res://Bullet-Enemy/Bullet-Enemy.tscn") #the bullet is a file saved on the project. this calls upon the shape of the bullet
var canShoot = false

func _ready():
	print ("enemy ready")
	$Area2D.connect("area_entered", self, "_colliding")
	
	
func _colliding(area): #This function determines what happens when the enemies collide with a side border 
	print ("here")
	print (area)
	if area.is_in_group("right"):
		get_parent().global_position.y += 10
		get_parent().speed = get_parent().speed * -1 #When the enemies hit the right border they chnage direction and head towards the left border
	if area.is_in_group("left"):
		get_parent().global_position.y += 10
		get_parent().speed = get_parent().speed * -1 

func _process(delta): #this function determines the amount of time that passes before the enmies start to fire at the player
	if canShoot:
		var rng = RandomNumberGenerator.new() #The RNG makes each enemies shoot at different times
		rng.randomize()
		var my_random_number = rng.randf_range(2.0, 30.0) #The RNG determines when the bullet shoots, this will be between 2 seconds after start, up to 30 seconds after the start of the game
		print("time: ",my_random_number)
		yield(get_tree().create_timer(my_random_number), "timeout")
		if GlobalVariables.enemyBulletInstanceCount < 5:
			var bulletInstance = bullet.instance() #once 5 bullets have been shot they refresh and are shot again from different enemies
		
			bulletInstance.position = Vector2(global_position.x, global_position.y+20)
			get_tree().get_root().add_child(bulletInstance)
