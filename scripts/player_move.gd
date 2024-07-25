extends AnimatableBody2D

var step_size = 10.0

var _collide

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func move(action):
	#MOVEMENT###############################################
	if (action == "left"):
		_collide =  move_and_collide(Vector2(-step_size, 0))
		collision(_collide, "left")
		return 200
	if (action == "right"):
		_collide =  move_and_collide(Vector2(step_size, 0))
		collision(_collide, "right")
		return 200
	if (action == "up"):
		_collide =  move_and_collide(Vector2(0, -step_size))
		collision(_collide, "up")
		return 200
	if (action == "down"):
		_collide =  move_and_collide(Vector2(0, step_size))
		collision(_collide, "down")
		return 200

#Handles collision with different nodes
func collision(collider, _direction):
	if (collider is KinematicCollision2D):
		if (collider.get_collider().get_groups().size() > 0):
			for group in collider.get_collider().get_groups():
				match group:
					"block":
						print("block collision "+ _direction)
					_:
						print("Not applicable collision "+ _direction)
		else:
			print("No Group collision " + _direction)
		return 500





# func move_corrected(action):
# 	if (action == "left"):
# 		_collide =  move_and_collide(Vector2(-step_size, 0))
# 		correct_position()
# 		collision(_collide, "left")
# 		return 200
# 	if (action == "right"):
# 		_collide =  move_and_collide(Vector2(step_size, 0))
# 		correct_position()
# 		collision(_collide, "right")
# 		return 200
# 	if (action == "up"):
# 		_collide =  move_and_collide(Vector2(0, -step_size))
# 		correct_position()
# 		collision(_collide, "up")
# 		return 200
# 	if (action == "down"):
# 		_collide =  move_and_collide(Vector2(0, step_size))
# 		correct_position()
# 		collision(_collide, "down")
# 		return 200


# #Corrects the position to the nearest step. Currently it is every 200th pixel sideways and vertically
# func correct_position():
# 	if (fmod(position.x, step_size) < 0):
# 		if (abs(fmod(position.x, step_size) + step_size) > (step_size / 2)):
# 			position.x = position.x - (abs(fmod(position.x, step_size) + step_size) - step_size)
# 		else:
# 			position.x = position.x - abs(fmod(position.x, step_size) + step_size)
# 	elif (fmod(position.x, step_size) > 0):
# 		if (abs(fmod(position.x, step_size)) > (step_size / 2)):
# 			position.x = position.x - (abs(fmod(position.x, step_size)) - step_size)
# 		else:
# 			position.x = position.x - abs(fmod(position.x, step_size))

# 	if (fmod(position.y, step_size) < 0):
# 		if (abs(fmod(position.y, step_size) + step_size) > (step_size / 2)):
# 			position.y = position.y - (abs(fmod(position.y, step_size) + step_size) - step_size)
# 		else:
# 			position.y = position.y - abs(fmod(position.y, step_size) + step_size)
# 	elif (fmod(position.y, step_size) > 0):
# 		if (abs(fmod(position.y, step_size)) > (step_size / 2)):
# 			position.y = position.y - (abs(fmod(position.y, step_size)) - step_size)
# 		else:
# 			position.y = position.y - abs(fmod(position.y, step_size))

