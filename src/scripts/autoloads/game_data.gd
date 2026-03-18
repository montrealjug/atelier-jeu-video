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

## -- survival variables here --

func _ready() -> void:
	pass

func _on_enemy_died(_enemy: Enemy) -> void:
	pass

func _process(delta: float) -> void:
	pass
