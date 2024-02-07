extends Node2D

@export var speed = 200
@export var score_value = 10

func _process(delta):
	self.position.y += speed * delta
	
func _on_area_entered(area):
	self.queue_free()
	
	# Increase the score
	GameState.increase_score(score_value)
