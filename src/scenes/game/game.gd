class_name Main
extends Node2D


@export var y_sorted_elements: Node2D
@export var spawn_area: Area2D

@onready var wave_manager: WaveManager = %WaveManager


func _ready() -> void:
	await get_tree().create_timer(2.0).timeout
	GameData.y_sorted_elements = y_sorted_elements
	GameData.game_root = self
	set_spawn_rectangle()
	wave_manager.next()


func set_spawn_rectangle() -> void:
	var origin := spawn_area.global_position
	var collision_shape: CollisionShape2D = spawn_area.get_node("CollisionShape")
	var size: Vector2 = collision_shape.shape.size
	GameData.spawn_area = Rect2(origin, size)
