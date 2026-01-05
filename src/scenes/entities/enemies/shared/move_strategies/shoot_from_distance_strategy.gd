class_name EnemyShootfromDistanceStrategy
extends Node


@export var min_distance: float
@export var shoot_cooldown: float
@export var enemy: Enemy
## The node that shoots projectiles
@export var shooter_component: Shooter

var player: Player
var shoot_cooldown_timer: Timer


func _ready() -> void:
	player = GameData.player
	shoot_cooldown_timer = create_timer()
	# Starts the cooldown timer so the enemy doesn't shoot immediately after spawning
	shoot_cooldown_timer.start()


func _physics_process(_delta: float) -> void:
	if enemy.global_position.distance_to(player.global_position) <= min_distance:
		enemy.velocity = Vector2.ZERO
		if can_shoot():
			shoot()
	else:
		var direction := enemy.global_position.direction_to(player.global_position)
		enemy.velocity = direction * enemy.stats.speed
	enemy.move_and_slide()


func can_shoot() -> bool:
	return shoot_cooldown_timer.is_stopped()


func shoot() -> void:
	shooter_component.shoot()
	shoot_cooldown_timer.start()


func create_timer() -> Timer:
	var timer := Timer.new()
	add_child(timer)
	timer.wait_time = shoot_cooldown
	timer.one_shot = true
	return timer
