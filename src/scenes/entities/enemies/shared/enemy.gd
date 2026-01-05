class_name Enemy
extends CharacterBody2D


@export var stats: EnemyStats
@export var data: EnemyData
@export var health: EnemyHealth

var damage_information: DamageInformation


func _ready() -> void:
	damage_information = stats.damage_information
