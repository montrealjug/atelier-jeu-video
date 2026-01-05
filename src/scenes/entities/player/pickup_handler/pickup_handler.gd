class_name PlayerPickupHandler
extends Area2D


## The speed the player gains when picking up a speed upgrade
const SPEED_BONUS := 15
## The HP the player gains when picking up a HP upgrade
const HP_BONUS := 15
## The damage bonus the player gains when picking up a damage upgrade
const DAMAGE_BONUS := 2

signal stats_changed(upgrade_type: UpgradePotion.UpgradeType)

@export var player: Player
@export var upgrade_particles_scene: PackedScene

var current_pickup: UpgradePotion
var player_stats: PlayerStats
var player_data: PlayerData


func _ready() -> void:
	area_entered.connect(_on_area_entered)
	area_exited.connect(_on_area_exited)
	player_stats = player.stats
	player_data = player.data


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and current_pickup:
		upgrade_stats()
		stats_changed.emit(current_pickup.upgrade_type)


func _on_area_entered(pickup: UpgradePotion) -> void:
	current_pickup = pickup


func _on_area_exited(_pickup: UpgradePotion) -> void:
	current_pickup = null


func upgrade_stats() -> void:
	match current_pickup.upgrade_type:
		UpgradePotion.UpgradeType.DAMAGE:
			player_stats.damage_information.damage += DAMAGE_BONUS
		UpgradePotion.UpgradeType.MOVE_SPEED:
			player_stats.speed += SPEED_BONUS
		UpgradePotion.UpgradeType.HP_MAX:
			player_stats.hp_max += HP_BONUS
			player_data.hp += HP_BONUS
		UpgradePotion.UpgradeType.ATTACK_SPEED:
			player_stats.attack_cooldown = clamp(player_stats.attack_cooldown * 0.9, 0.1, 99)
	stats_changed.emit(current_pickup.upgrade_type)
	spawn_upgrade_particles()


func spawn_upgrade_particles() -> void:
	var particles := NodeUtil.instance_scene(upgrade_particles_scene, self) as OneShotParticles
	particles.modulate = current_pickup.color
