class_name PlayerCamera
extends Camera2D


func _ready() -> void:
	GameData.camera = self


## Returns a Rect2 relative to the current position of the Camera
func get_current_rect() -> Rect2:
	var viewport_size := get_viewport_rect().size
	var visible_size := viewport_size / zoom
	var camera_pos := get_screen_center_position()
	var top_left := camera_pos - visible_size / 2.0
	return Rect2(top_left, visible_size)
