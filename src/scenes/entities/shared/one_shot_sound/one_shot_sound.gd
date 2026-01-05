## A sound that plays when instantiated, and deletes itself when done playing
class_name OneShotSound
extends AudioStreamPlayer


@export var random_pitch_min := 1.0
@export var random_pitch_max := 1.0


func _ready() -> void:
	pitch_scale = randf_range(random_pitch_min, random_pitch_max)
	play()
	await finished
	queue_free()
