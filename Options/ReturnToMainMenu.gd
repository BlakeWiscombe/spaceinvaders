extends Button



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ReturnToMainMenu_pressed(): #starts the process of changing scene when this button is pressed
	get_tree().change_scene("res://menu/Menu.tscn") #get_tree is talking about the hierarchy of code
	#get_tree().change_scene, this refers to the code looking through the hierarchy and grabbing the chosen scene
