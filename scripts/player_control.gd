extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var parent = get_parent()
	if (Input.is_action_pressed("player_1_left")):
		var delay_time = get_parent().move("left")
	if (Input.is_action_pressed("player_1_right")):
		var delay_time = get_parent().move("right")
	if (Input.is_action_pressed("player_1_up")):
		var delay_time = get_parent().move("up")
	if (Input.is_action_pressed("player_1_down")):
		var delay_time = get_parent().move("down")
	pass
