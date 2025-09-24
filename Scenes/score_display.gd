extends Node2D

var number_widths: Dictionary = {
	"0" = 18,
	"1" = 14,
	"2" = 18,
	"3" = 18,
	"4" = 18,
	"5" = 18,
	"6" = 18,
	"7" = 18,
	"8" = 18,
	"9" = 18,
}

@onready var sprites: Array[Sprite2D] = [$Sprite2D]

func set_score_display(score: int):
	var score_string: String = str(score)
	var score_array: Array = score_string.split()
	
	var text_width: int = 0
	var score_length: int = 0
	
	for number in score_array:
		score_length += 1
		text_width += number_widths[number]
	
	var i = score_length
	
	for number in score_array:
		i -= 1
		
		if not sprites.has(i):
			print("No Sprite!")
		
	

func _process(_delta):
	set_score_display(10)
