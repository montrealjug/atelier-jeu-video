class_name Weapon
extends Node2D


@export var player: Player
@export var fireball_scene: PackedScene

@onready var attack_cooldown: Timer = %AttackCooldown
@onready var sprite: Sprite2D = %Sprite

## The current direction the player is targeting
var current_direction: Vector2 = Vector2.RIGHT
var player_stats: PlayerStats


func _ready() -> void:
	attack_cooldown.wait_time = player.stats.attack_cooldown
	player_stats = player.stats
	player.stats_changed.connect(_on_stats_changed)


## Runs every frame. Rotate the weapon according to the direction of the controller's
## right stick.
func _process(_delta: float) -> void:
	var right_stick_direction := get_right_stick_direction(0.1)
	if right_stick_direction != Vector2.ZERO:
		current_direction = right_stick_direction
	else:
		current_direction = (get_global_mouse_position() - global_position).normalized()
	sprite.flip_v = current_direction.x < 0
	rotation = Vector2.RIGHT.angle_to(current_direction)

	if Input.is_action_pressed("attack_primary"):
		fire()


func get_right_stick_direction(dead_zone: float) -> Vector2:
	var x := Input.get_joy_axis(0, JOY_AXIS_RIGHT_X)
	var y := Input.get_joy_axis(0, JOY_AXIS_RIGHT_Y)
	var direction := Vector2(x, y)
	if direction.length() <= dead_zone:
		return Vector2.ZERO
	return direction.normalized()


func fire() -> void:
	if attack_cooldown.is_stopped():
		spawn_fireball()
		attack_cooldown.start()


func spawn_fireball() -> void:
	var fireball := NodeUtil.instance_2d_scene_at_location(fireball_scene, self, global_position) as FireBall
	fireball.direction = current_direction
	fireball.damage_information = player_stats.damage_information


## Update the attack cooldown timer if the player's attack speed has changed
func _on_stats_changed(type: UpgradePotion.UpgradeType) -> void:
	if type == UpgradePotion.UpgradeType.ATTACK_SPEED:
		attack_cooldown.wait_time = player_stats.attack_cooldown
