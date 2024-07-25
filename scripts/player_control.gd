extends Node2D
var stats

# Called when the node enters the scene tree for the first time.
func _ready():
	for child in get_parent().get_children():
		if (child.is_in_group("stats")):
			stats = child
			print(stats.name)
			break
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (Input.is_action_pressed("player_1_left")):
		get_parent().move("left", stats.get_final_speed())
	if (Input.is_action_pressed("player_1_right")):
		get_parent().move("right", stats.get_final_speed())
	if (Input.is_action_pressed("player_1_up")):
		get_parent().move("up", stats.get_final_speed())
	if (Input.is_action_pressed("player_1_down")):
		get_parent().move("down", stats.get_final_speed())

	pass
