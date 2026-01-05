## Holds data for a sub-wave of enemies. A Wave of enemies consists of multiple sub-waves
class_name SubWaveData
extends Resource

## CIRCLE: A circular shape around the player
## RANDOM: Each enemy spawn at a random position
## CLUSTER: Enemies spawn as a cluster on the map
enum Pattern { CIRCLE, RANDOM,  CLUSTER }
enum EnemyType { ARCHER, BAT, GHOST, KNIGHT, SPIDER }

## Defines the pattern used to spawn enemies
@export var pattern: Pattern
## The scene of the enemy to spawn
@export var enemy_type: EnemyType
## The amount of enemies to spawn
@export var amount: int
## Used to order the sub-waves, all sub-waves of order 0 will spawn together, then
## all the sub-waves of order 1, etc.
@export var order: int
