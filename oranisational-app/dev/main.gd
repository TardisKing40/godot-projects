extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var timeDict = OS.get_time();
	var hour = timeDict.hour;
	var minute = timeDict.minute;
	var currentTime = "%02d : %02d" % [hour, minute]
	
	$"Time".text = str(currentTime)


func _on_Exit_pressed():
	$".".get_tree().quit()
