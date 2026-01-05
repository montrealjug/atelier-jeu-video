## Reprensents the current state of an enemy. This is dynamic data that changes during the game.
class_name EnemyData
extends Resource


## The current hp of the enemy
@export var hp: int


## Create an EnemyData object from the enemy stats.
static func create(stats: EnemyStats) -> EnemyData:
	var data := EnemyData.new()
	data.hp = stats.hp_max
	return data
