class_name EnemyHealth
extends Node2D


signal died
signal damage_taken(previous_hp: int, new_hp: int)

@export var hurt_box: EnemyHurtBox
@export var enemy: Enemy
@export_category("Scenes")
@export var hit_sfx_scene: PackedScene
@export var damage_indicator_scene: PackedScene

@onready var hp_bar: TextureProgressBar = %HpBar

var hp_max: int
var data: EnemyData


func _ready() -> void:
	hurt_box.hurt.connect(_on_hurt)
	hp_max = enemy.stats.hp_max
	data = enemy.data
	data.hp = hp_max


func _on_hurt(damage_information: DamageInformation) -> void:
	NodeUtil.instance_scene(hit_sfx_scene, get_tree().root)
	var current_hp : int = clamp(data.hp - damage_information.damage, 0, hp_max)
	hp_bar.value = float(current_hp) / float(hp_max)
	damage_taken.emit(data.hp, current_hp)
	create_damage_indicator(damage_information)
	if current_hp == 0:
		died.emit()
	data.hp = current_hp


func create_damage_indicator(damage_information: DamageInformation) -> void:
	var damage_indicator := NodeUtil.instance_2d_scene_at_location(damage_indicator_scene, GameData.game_root, global_position) as DamageIndicator
	damage_indicator.damage_information = damage_information
