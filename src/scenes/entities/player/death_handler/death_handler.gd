class_name PlayerDeathHandler
extends Node


@export var death_particles: GPUParticles2D
@export var death_sfx: AudioStreamPlayer
@export var sprite: PlayerSprite
@export var weapon: Weapon
@export var health: PlayerHealth


func _ready() -> void:
	health.died.connect(_on_died)
	
	
func _on_died() -> void:
	sprite.hide()
	weapon.hide()
	death_sfx.play()
	death_particles.emitting = true
