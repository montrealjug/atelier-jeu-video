## Spawn strategy that spawns each enemy on a random position on the screen
class_name RandomSpawnStrategy
extends BaseSpawnStrategy


func spawn(sub_wave: SubWaveData) -> void:
	for x in range(sub_wave.amount):
		var spawn_area := GameData.camera.get_current_rect().intersection(GameData.spawn_area)
		var spawn_position := RectUtil.get_random_point(spawn_area)
		var spawner := NodeUtil.instance_2d_scene_at_location(spawner_scene, GameData.game_root, spawn_position) as EnemySpawner
		spawner.enemy_type = sub_wave.enemy_type
		await get_tree().create_timer(randf_range(0.01, 0.05)).timeout
