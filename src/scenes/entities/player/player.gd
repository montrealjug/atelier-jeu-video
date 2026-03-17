class_name Player
extends CharacterBody2D


signal died
signal health_changed(previous_hp: int, current_hp: int)
signal stats_changed(type: UpgradePotion.UpgradeType)

@export var stats: PlayerStats
@export var data: PlayerData

@onready var pickup_handler: PlayerPickupHandler = %PickupHandler
@onready var player_health: PlayerHealth = %PlayerHealth


## Runs once just when the Player has been initialized
func _ready() -> void:
	## Save a reference to the player in the global GameData script so other game elements
	## can access it.
	GameData.player = self
	player_health.damage_taken.connect(_on_damage_taken)
	player_health.died.connect(_on_died)
	pickup_handler.stats_changed.connect(_on_stats_changed)


func _on_damage_taken(previous_hp: int, current_hp: int) -> void:
	health_changed.emit(previous_hp, current_hp)


func _on_died() -> void:
	died.emit()


func _on_stats_changed(type: UpgradePotion.UpgradeType) -> void:
	stats_changed.emit(type)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("teleport"):
		global_position = get_global_mouse_position()
