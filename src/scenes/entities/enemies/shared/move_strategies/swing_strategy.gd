class_name EnemySwingStrategy
extends Node


@export var enemy: Enemy
@export var orbit_radius: float = 100.0
@export var max_angle_deg: float = 13.0
@export var duration: float = 2.0

var angle := 0.0

var speed := 0.5 
var orbit_center: Vector2

## Used to determine if the swing has been initialized yet
var initialized := false


func _ready() -> void:
	await get_tree().process_frame # Waits for one frame. We need to do that for the enemy to be properly initialized before setting up the swing
	orbit_center = Vector2(enemy.global_position.x, enemy.global_position.y - 1000)
	var t := create_tween().set_trans(Tween.TRANS_SINE).set_loops()
	t.tween_property(self, "angle", max_angle_deg, duration)
	t.chain().tween_property(self, "angle", -max_angle_deg, duration)
	initialized = true


func _process(_delta: float) -> void:
	if not initialized:
		return
	var offset = Vector2(0, orbit_radius)
	offset = offset.rotated(deg_to_rad(angle))
	enemy.global_position = orbit_center + offset
