extends KinematicBody2D

export var startingPosition = Vector2(540, 1800)
export var movementSpeed = 300

var moveDirection = 0
var viewportSize

func _ready():
	self.position = startingPosition
	viewportSize = get_viewport().size

func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			if event.position.x < viewportSize.x /2:
				moveDirection = -1
			else:
				moveDirection = 1
		else:
			moveDirection = 0

func _process(delta):
	if moveDirection != 0:
		position.x = clamp(position.x, 0 + 60, viewportSize.x - 60)
		self.translate(Vector2(movementSpeed * moveDirection * delta, 0))
