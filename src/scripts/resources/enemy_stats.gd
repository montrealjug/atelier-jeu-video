## Holds all the stats of an enemy. It is static data that represents the blueprint of
## an enemy.
class_name EnemyStats
extends Resource

## The max HP of the enemy
@export var hp_max: int
## Information on the damage it deals to the player
@export var damage_information: DamageInformation
## The speed the enemy is moving
@export var speed: int
