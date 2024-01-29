extends Node2D

@export var speed = 200

func _process(delta):
	self.position.y += speed * delta

func _on_area_entered(area):
	self.queue_free() # Replace with function body.
