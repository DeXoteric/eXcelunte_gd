extends ParallaxBackground

export var scrollingSpeed = 100

var backgroundOffset = 0

func _process(delta):
	backgroundOffset += scrollingSpeed * delta
	scroll_offset = Vector2(0, backgroundOffset)
