## Handles the logic for spawning waves and sub-waves of enemies
class_name WaveManager
extends Node


@export var waves_data: Array[WaveData]

@onready var random_spawn_strategy: RandomSpawnStrategy = %RandomSpawnStrategy
@onready var cluster_spawn_strategy: ClusterSpawnStrategy = %ClusterSpawnStrategy
@onready var circle_spawn_strategy: CircleSpawnStrategy = %CircleSpawnStrategy
@onready var wave_timer: Timer = %WaveTimer

var current_wave_number := 0
var current_sub_wave_number := 0
var current_wave: WaveData
var spawn_strategies: Dictionary[SubWaveData.Pattern, BaseSpawnStrategy]
var enemy_scenes: Dictionary[SubWaveData.EnemyType, PackedScene]


func _ready() -> void:
	GameData.waves_data = waves_data
	spawn_strategies = {
		SubWaveData.Pattern.RANDOM: random_spawn_strategy,
		SubWaveData.Pattern.CLUSTER: cluster_spawn_strategy,
		SubWaveData.Pattern.CIRCLE: circle_spawn_strategy,
	}
	Signals.enemy_died.connect(_on_enemy_died)
	Signals.pickup_phase_finished.connect(_on_pickup_phase_finished)
	wave_timer.timeout.connect(_on_wave_timer_timeout)


## Calls the next wave or sub-waves
func next() -> void:
	## Initialize the first wave
	if current_wave_number == 0:
		_next_wave()
		return
	current_sub_wave_number += 1
	if not has_next_sub_wave():
		Signals.wave_finished.emit(current_wave_number)
	else:
		_spawn_sub_waves()


func _next_wave() -> void:
	current_wave_number += 1
	current_sub_wave_number = 1
	current_wave = waves_data.pop_front()
	if current_wave == null:
		Signals.game_won.emit()
	else:
		Signals.wave_started.emit(current_wave_number)
		_spawn_sub_waves()


func _spawn_sub_waves() -> void:
	var max_sub_wave_number: int = current_wave.sub_waves.map(func(sub_wave: SubWaveData): return sub_wave.order).max()
	if current_sub_wave_number < max_sub_wave_number:
		wave_timer.start()
	else:
		wave_timer.stop()
	var sub_waves := current_wave.sub_waves.filter(order_number_filter)
	for sub_wave: SubWaveData in sub_waves:
		spawn_strategies[sub_wave.pattern].spawn(sub_wave)


func order_number_filter(sub_wave: SubWaveData) -> bool:
	return sub_wave.order == current_sub_wave_number


## Checks the amount of enemies still alive, if all of them are dead, call the next wave
func _on_enemy_died(_enemy: Enemy) -> void:
	var enemies_alive := len(get_tree().get_nodes_in_group(GameData.ENEMY_GROUP))
	if enemies_alive == 0:
		next()


func _on_pickup_phase_finished() -> void:
	_next_wave()


## When the wave timer expires, spawn the next sub-wave
func _on_wave_timer_timeout() -> void:
	next()


## Indicates if there is more sub-waves to come in the current wave
func has_next_sub_wave() -> bool:
	return len(current_wave.sub_waves.filter(order_number_filter)) > 0
