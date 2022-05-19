#this script runs everytime the player does any sort of movement 
#this script determines the speed and position of the player
#what happens to the player when rapid fire is selected
extends KinematicBody2D

#the bottom functions determine the speed of the player either left or right
#the other predetermined property is the shape of the 'bullet' that the player fires
var movement_speed = 200
var bulletSource = preload ("res://Bullet/Bullet.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)
#this function determines what happens when the left or right arrows are pressed
#the right arrow moves the player right on the screen
#the left arrow move the player to the left of the screen
#the action of pressing the up arrow automatically puts the player into the win scene
#this was done for easier testing of the win screen
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(movement_speed * delta, 0))
	#if Input.is_action_pressed("ui_up"):
	#	get_tree().change_scene("res://WinScene.tscn")
			
#This function determines the properties of rapid fire
#when this is activated the player does not have to keep pressing the shoot button for bullets to appear
func _process(delta):
	if GlobalVariables.rapidFire:
		if Input.is_action_pressed("fire"):
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)
	else:
		if Input.is_action_just_pressed("fire"):
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)
