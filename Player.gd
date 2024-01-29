extends Node2D

@export var laser_tscn: PackedScene

func _ready():
	var num = 6
	
	for i in num:
		print("Hello")

func _process(delta):
	var mouse_position = get_global_mouse_position()
	self.position.x = mouse_position.x
	
	# when the player clicks, spawn the laser
	if Input.is_action_just_pressed("Fire"):
		var new_laser = laser_tscn.instantiate()
		add_sibling(new_laser)
		new_laser.position = self.position
