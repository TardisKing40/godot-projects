extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rainOp = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_CheckBox_pressed():
	if rainOp == 0:
		$"Design/Rain".play()
		rainOp += 1
	if rainOp == 1:
		$"Design/Rain".stream_paused = true
		rainOp -= 1
