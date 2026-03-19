## Holds the game data to share between the game elements
extends Node


const ENEMY_GROUP := "enemy"


var player: Player
var camera: PlayerCamera
## The node that contains all elements that should be y-sorted
var y_sorted_elements: Node2D
## The area where enemies are allowed to spawn
var spawn_area: Rect2
## Informations on the waves of enemies that will come
var waves_data: Array[WaveData]
## Root node of the game
var game_root: Node2D

## -- score variables here --
var score: int = 0

## -- survival variables here --
var survival_time: float = 0.0 # temps de survie en secondes

func _ready() -> void:
	Signals.enemy_died.connect(_on_enemy_died)

func _on_enemy_died(_enemy: Enemy) -> void:
	score += 1
	print("Score : ", score)

func _process(delta: float) -> void:
	survival_time += delta # ajoute le temps écoulé
