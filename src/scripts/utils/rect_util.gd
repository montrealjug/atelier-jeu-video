class_name RectUtil
extends Node

## Returns a random Vector2 located inside of the given Rect2
static func get_random_point(rect: Rect2) -> Vector2:
	return Vector2(
		randi_range(int(rect.position.x), int(rect.position.x + rect.size.x)),
		randi_range(int(rect.position.y), int(rect.position.y + rect.size.y))
	)
