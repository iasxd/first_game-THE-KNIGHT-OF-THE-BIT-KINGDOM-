extends Node
var score = 0
@onready var scorelabel: Label = $scorelabel



func addpoint():
	score += 1
	scorelabel.text = " CONGRATULATIONS !!!you collected "+ str(score) + " coins out of 88 coins "
