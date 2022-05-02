extends KinematicBody2D


var movement_speed = 200
var bulletSource = preload ("res://Bullet/Bullet.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(movement_speed * delta, 0))
			
func _process(delta):
	#if GlobalVariables.rapidFire:
	#	if Input.is_action_pressed("fire"):
	#			var bulletInstance = bulletSource.instance()
	#			bulletInstance.position = Vector2(position.x-0, position.y-75)
	#			get_tree().get_root().add_child(bulletInstance)
	#	else:
			if Input.is_action_just_pressed("fire"):
				var bulletInstance = bulletSource.instance()
				bulletInstance.position = Vector2(position.x-0, position.y-75)
				get_tree().get_root().add_child(bulletInstance)
