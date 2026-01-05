## Spawn strategy that spawns enemies in a cluster on a random position on the screen
class_name ClusterSpawnStrategy
extends BaseSpawnStrategy

@export var cluster_radius: float = 100.0


func spawn(sub_wave: SubWaveData) -> void:
	var spawn_area := GameData.camera.get_current_rect().intersection(GameData.spawn_area)
	var cluster_center := RectUtil.get_random_point(spawn_area)
	
	for x in range(sub_wave.amount):
		var angle := randf() * TAU
		var distance := randf() * cluster_radius
		var offset := Vector2(cos(angle), sin(angle)) * distance
		var spawn_position := cluster_center + offset
		var spawner := NodeUtil.instance_2d_scene_at_location(spawner_scene, GameData.game_root, spawn_position) as EnemySpawner
		spawner.enemy_type = sub_wave.enemy_type
		await get_tree().create_timer(randf_range(0.01, 0.05)).timeout
