extends RayCast2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	
func _process(delta):
	if self.is_colliding():
		get_parent().canShoot = false
	else:
		get_parent().canShoot = true
