extends Node

var score = 0
@onready var scoree: Label = $score

func pointadd():
	score += 1
	scoree.text = "You have collected " + str(score) + " coins"
