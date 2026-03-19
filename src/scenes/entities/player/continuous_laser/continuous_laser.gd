class_name ContinuousLaser extends Node2D

@onready var raycast: RayCast2D = $RayCast2D
@onready var line: Line2D = $Line2D
@onready var damage_timer: Timer = $DamageTimer
@onready var glow: Line2D = $GlowLine
@onready var laser_sfx: AudioStreamPlayer = $LaserSfx

var damage_information: DamageInformation
var is_active: bool = false
var needs_rearm: bool = false


func _ready() -> void:
	damage_timer.timeout.connect(_on_damage_timer_timeout)
	Signals.enemy_died.connect(_on_enemy_died)
	visible = false


func activate(dmg_info: DamageInformation) -> void:
	damage_information = dmg_info
	is_active = true
	needs_rearm = false
	visible = true
	damage_timer.start()
	laser_sfx.play()


func deactivate() -> void:
	is_active = false
	visible = false
	damage_timer.stop()
	laser_sfx.stop()


func _process(_delta: float) -> void:
	if not is_active:
		return
	if raycast.is_colliding():
		var hit := to_local(raycast.get_collision_point())
		line.set_point_position(1, hit)
		glow.set_point_position(1, hit)
	else:
		line.set_point_position(1, Vector2(400, 0))
		glow.set_point_position(1, Vector2(400, 0))


func _on_damage_timer_timeout() -> void:
	if not raycast.is_colliding():
		return
	var body = raycast.get_collider()
	var hurtbox := body.find_child("EnemyHurtBox") as EnemyHurtBox
	if hurtbox:
		hurtbox.hurt.emit(damage_information)


func _on_enemy_died(_enemy: Enemy) -> void:
	deactivate()
	needs_rearm = true
