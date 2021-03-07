extends Button

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()


func _on_DiceButton_pressed():
	var roll_result = 0
	for i in range(4):
		roll_result += rng.randi_range(0,1)
	print("I have been pressed! Result is")
	print(roll_result)
