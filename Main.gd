extends CanvasLayer

export (float) var display_dice_timeout = 1.5

func _ready():
	pass # Replace with function body.

func _on_DiceButton_dice_rolled(outcome):
	$DiceButton.hide()
	
	$DiceDispalyTimer.start(display_dice_timeout)
	
	$DiceOutcomeLabel.text = str(outcome)
	$DiceOutcomeLabel.show()


func _on_DiceDispalyTimer_timeout():
	$DiceButton.show()
	$DiceOutcomeLabel.hide()
