class_name EnemyDeathManager
extends Node2D


@export var death_particles_scene: PackedScene
@export var enemy: Enemy
@export var health: EnemyHealth


func _ready() -> void:
	health.died.connect(_on_died)


func _on_died() -> void:
	var death_particles := NodeUtil.instance_2d_scene_at_location(death_particles_scene, GameData.game_root, global_position) as GPUParticles2D
	death_particles.emitting = true
	enemy.remove_from_group(GameData.ENEMY_GROUP)
	Signals.enemy_died.emit(enemy)
	enemy.queue_free()
