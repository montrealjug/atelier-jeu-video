class_name EnemySpawner
extends Node2D


@export var smoke_particles_scene: PackedScene

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var spawn_sfx: AudioStreamPlayer = %SpawnSfx

var enemy_type: SubWaveData.EnemyType


func _ready() -> void:
	spawn()


func spawn() -> void:
	animation_player.play("target_animation")
	await animation_player.animation_finished
	spawn_sfx.play()
	NodeUtil.instance_2d_scene_at_location(smoke_particles_scene, GameData.y_sorted_elements, global_position)
	NodeUtil.instance_2d_scene_at_location(get_enemy_scene(), GameData.y_sorted_elements, global_position)
	await spawn_sfx.finished
	queue_free()


func get_enemy_scene() -> PackedScene:
	match enemy_type:
		SubWaveData.EnemyType.ARCHER: return load("res://src/scenes/entities/enemies/archer/archer.tscn")
		SubWaveData.EnemyType.BAT: return load("res://src/scenes/entities/enemies/bat/bat.tscn")
		SubWaveData.EnemyType.GHOST: return load("res://src/scenes/entities/enemies/ghost/ghost.tscn")
		SubWaveData.EnemyType.KNIGHT: return load("res://src/scenes/entities/enemies/knight/knight.tscn")
		SubWaveData.EnemyType.SPIDER: return load("res://src/scenes/entities/enemies/spider/spider.tscn")
	printerr("EnemySpawner - EnemyType %s not valid" % [enemy_type])
	return null
