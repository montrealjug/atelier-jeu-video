## Holds the logic for spawning upgrades at the end of a wave
class_name UpgradeSpawner
extends Node


## Spacing in pixels between each upgrade when spawning them
const SPACING := 64

@export var y_sorted_elements: Node2D
## A dictionary containing the scenes of each upgrade potions relative to their upgrade type
@export var upgrades: Dictionary[UpgradePotion.UpgradeType, PackedScene] = {}
## A dictionary containing the amount of upgrade to spawn after the end of a wave
@export var upgrade_spawn_amounts: Dictionary[int, int] = {}
## A dictionary containing the amount of upgrade the player is allowed to pick at the end of a wave
@export var upgrade_pick_amounts: Dictionary[int, int] = {}

@onready var label: Label = %Label

## Contains the current nodes for each spawned upgrades
var current_upgrades: Array[UpgradePotion] = []
## Indicate the amount of picked upgrades this wave
var picked := 0


func _ready() -> void:
	label.hide()
	Signals.wave_finished.connect(_on_wave_finished)


func _on_wave_finished(wave_number: int) -> void:
	current_upgrades = []
	picked = 0

	var amount_to_spawn := upgrade_spawn_amounts[wave_number]
	var amount_to_pick := upgrade_pick_amounts[wave_number]
	var random_upgrades := get_random_upgrades(amount_to_spawn)
	var camera_rect := GameData.camera.get_current_rect()
	var screen_center := Vector2(
		camera_rect.position.x + camera_rect.size.x / 2,
		camera_rect.position.y + camera_rect.size.y / 2
	)
	place_label(amount_to_pick, screen_center)
	var i := 0
	for upgrade_scene: PackedScene in random_upgrades:
		var spawn_position := get_item_position(i, amount_to_spawn, screen_center)
		var upgrade := NodeUtil.instance_2d_scene_at_location(upgrade_scene, y_sorted_elements, spawn_position) as UpgradePotion
		current_upgrades.append(upgrade)
		upgrade.picked.connect(func(): _on_upgrade_picked(upgrade, amount_to_pick))
		await get_tree().create_timer(0.2).timeout
		i += 1


func place_label(amount_to_pick: int, screen_center: Vector2) -> void:
	label.show()
	label.text = "pick %s" % [amount_to_pick]
	label.global_position = Vector2(screen_center.x - label.size.x / 2, screen_center.y + 32)


## Returns random elements from the upgrades dictionary
## amount: the amount of upgrades to randomly pick
func get_random_upgrades(amount: int) -> Array[PackedScene]:
	var keys = upgrades.keys()
	keys.shuffle()
	var result: Array[PackedScene] = []
	for i in range(amount):
		result.append(upgrades[keys[i]])
	return result


## Returns the Vector2 position to spawn the upgrade item, relative to its index and the center of the screen
func get_item_position(item_index: int, total_items: int, screen_center: Vector2) -> Vector2:
	var total_width := (total_items - 1) * SPACING
	var start_x := screen_center.x - (total_width / 2.0)
	var x_pos := start_x + (item_index * SPACING)
	return Vector2(x_pos, screen_center.y)


func _on_upgrade_picked(upgrade: UpgradePotion, amount_to_pick: int) -> void:
	current_upgrades.erase(upgrade)
	picked += 1
	if picked == amount_to_pick:
		Signals.pickup_phase_finished.emit()
		label.hide()
		for upgrade_left: UpgradePotion in current_upgrades:
			upgrade_left.queue_free()
