class_name PlayerMovement
extends Node


@export var player: Player

var player_stats: PlayerStats


func _ready() -> void:
	player_stats = player.stats


func _physics_process(_delta: float) -> void:
	var x_input = Input.get_action_strength("right") - Input.get_action_strength("left")
	var y_input = Input.get_action_strength("down") - Input.get_action_strength("up")
	var input_vector = Vector2(x_input, y_input).normalized()

	player.velocity = input_vector * player_stats.speed
	player.move_and_slide()
