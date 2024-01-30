extends Node2D

@export var speed = 200 # Two pixels a second

func _process(delta):
	position.y -= speed * delta

func _on_area_entered(area):
	self.queue_free()
