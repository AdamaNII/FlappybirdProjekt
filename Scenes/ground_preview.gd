extends Sprite2D

var count = 0
var speed = -50

func _process(delta: float) -> void:
	count = count - floor(count/8) * 8
	
	count += delta
	
	position.x = round(count * speed)
	
	pass
