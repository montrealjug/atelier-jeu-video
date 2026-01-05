class_name PlayerHealth
extends Node


signal died
signal damage_taken(previous_hp: int, new_hp: int)

@export var hurt_box: PlayerHurtBox
@export var player: Player

@onready var hit_effect: AudioStreamPlayer = %HitEffect

var hp_max: int
var data: PlayerData


func _ready() -> void:
	hurt_box.hurt.connect(_on_hurt)
	hp_max = player.stats.hp_max
	data = player.data
	data.hp = hp_max


func _on_hurt(damage_information: DamageInformation) -> void:
	play_sound_effect()
	var current_hp : int = clamp(data.hp - damage_information.damage, 0, hp_max)
	var previous_hp := data.hp
	if current_hp == 0:
		Input.start_joy_vibration(0, 0.5, 0.8, 0.6)
		died.emit()
	else:
		Input.start_joy_vibration(0, 0.5, 0.0, 0.2)
	data.hp = current_hp
	damage_taken.emit(previous_hp, current_hp)


func play_sound_effect() -> void:
	hit_effect.stop()
	hit_effect.pitch_scale = randf_range(0.8, 1.2)
	hit_effect.play()
