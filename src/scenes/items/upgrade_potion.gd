class_name UpgradePotion
extends Area2D


signal picked

enum UpgradeType { DAMAGE, ATTACK_SPEED, HP_MAX, MOVE_SPEED }

@export var upgrade_type: UpgradeType
@export var color: Color
@export_category("Scenes")
@export var smoke_particles_scene: PackedScene
@export var pickup_sfx_scene: PackedScene

@onready var button_sprite: Sprite2D = %ButtonSprite
@onready var animation_player: AnimationPlayer = %AnimationPlayer
@onready var spawn_sfx: AudioStreamPlayer = %SpawnSfx

var is_player_near := false


func _ready() -> void:
	spawn_sfx.play()
	NodeUtil.instance_scene(smoke_particles_scene, self)
	button_sprite.hide()
	area_entered.connect(_on_player_near)
	area_exited.connect(_on_player_left)
	animation_player.play("appear")


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and is_player_near:
		picked.emit()
		NodeUtil.instance_scene(pickup_sfx_scene, GameData.game_root)
		queue_free()


func _on_player_near(_player: Node2D) -> void:
	button_sprite.show()
	is_player_near = true


func _on_player_left(_player: Node2D) -> void:
	button_sprite.hide()
	is_player_near = false
