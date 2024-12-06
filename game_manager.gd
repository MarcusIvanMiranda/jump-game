extends Node
@onready var points_label: Label = $"../UI/Panel/points_label"
@export var hearts : Array[Node]

var points = 0
var lives = 3

func drecrease_health():
	lives -= 1
	print(lives)
	for h in 3:
		if (h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if (lives == 0):
		get_tree().reload_current_scene()

func add_point():
	points += 1
	print(points)
	points_label.text = "Points: " + str(points)
