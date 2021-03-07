extends Button

var rng = RandomNumberGenerator.new()
signal dice_rolled(outcome)

func _ready():
	rng.randomize()

func _on_DiceButton_pressed():
	"Roll a Number"
	var roll_number = 0
	for i in range(4):
		roll_number += rng.randi_range(0,1)
	emit_signal("dice_rolled", roll_number)
