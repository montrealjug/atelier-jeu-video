## A state where the enemy moves towards the player in a straight line
class_name EnemyStraightFollowStrategy
extends Node


@export var enemy: CharacterBody2D

var player: Player


func _ready() -> void:
	player = GameData.player


func _physics_process(_delta: float) -> void:
	var direction := enemy.global_position.direction_to(player.global_position)
	enemy.velocity = direction * enemy.stats.speed
	enemy.move_and_slide()
