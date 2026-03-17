class_name Player
extends CharacterBody2D


signal died
signal health_changed(previous_hp: int, current_hp: int)
signal stats_changed(type: UpgradePotion.UpgradeType)

@export var stats: PlayerStats
@export var data: PlayerData

@onready var pickup_handler: PlayerPickupHandler = %PickupHandler
@onready var player_health: PlayerHealth = %PlayerHealth
@onready var teleport_cooldown: Timer = $TeleportCooldown
@onready var teleport_label: Label = $TeleportLabel


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
		if teleport_cooldown.is_stopped():
			teleport_cooldown.start()
			_do_teleport()

func _process(_delta: float) -> void:
	if teleport_cooldown.is_stopped():
		teleport_label.visible = false
	else:
		teleport_label.visible = true
		teleport_label.text = "%.1f" % teleport_cooldown.time_left
		
func _do_teleport() -> void:
	var tween = create_tween()
	tween.tween_property(self, "modulate:a", 0.0, 0.5)
	await tween.finished

	global_position = get_global_mouse_position()
	get_viewport().get_camera_2d().reset_smoothing()

	tween = create_tween()
	tween.tween_property(self, "modulate:a", 1.0, 0.5)
