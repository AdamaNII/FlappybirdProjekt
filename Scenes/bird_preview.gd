extends Sprite2D

var count = 0
var amplitude = 4
var move_scale = 8

var anim_count = 0
var anim_speed = 5

func _process(delta: float) -> void:
	
	anim_count += delta * anim_speed
	
	count = count - floor(count/PI) * PI
	
	if int(round(anim_count)) % 2 == 0:
		region_rect.position.x = 0
	else:
		region_rect.position.x = 32
	
	count += delta
	
	position.y = round(sin(move_scale * count) * amplitude)
	
	pass
