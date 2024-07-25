extends Node2D

## [total, current, buff/debuff]
var health = [3, 3, 0]
var speed = [10, 10, 0]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func set_health(type, amount):
	health[type] = amount

func change_health(type, amount):
	health[type] += amount

func get_health():
	return health

func set_speed(type, amount):
	speed[type] = amount

func change_speed(type, amount):
	speed[type] += amount

func get_speed():
	return speed

func get_final_speed():
	return speed[1] + speed[2]

func reset_buffs():
	health[2] = 0
	speed[2] = 0