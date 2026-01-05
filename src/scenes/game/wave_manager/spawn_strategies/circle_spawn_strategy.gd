class_name CircleSpawnStrategy
extends BaseSpawnStrategy


## Radius of the circle around the player
@export var circle_radius: float = 250.0

func spawn(sub_wave: SubWaveData) -> void:
	var spawn_area := GameData.camera.get_current_rect().intersection(GameData.spawn_area)
	var player_position := GameData.player.global_position
	
	# Calculate equal spacing between enemies
	var angle_step := TAU / sub_wave.amount
	
	for x in range(sub_wave.amount):
		var angle := angle_step * x
		var offset := Vector2(cos(angle), sin(angle)) * circle_radius
		var desired_position := player_position + offset
		
		var spawn_position := desired_position
		# If the spawn point is not in the spawn area, spawn somewhere else on the circle instead
		if not spawn_area.has_point(desired_position):
			spawn_position.x = clamp(desired_position.x, spawn_area.position.x, spawn_area.end.x)
			spawn_position.y = clamp(desired_position.y, spawn_area.position.y, spawn_area.end.y)
		
		var spawner := NodeUtil.instance_2d_scene_at_location(spawner_scene, GameData.game_root, spawn_position) as EnemySpawner
		spawner.enemy_type = sub_wave.enemy_type
		await get_tree().create_timer(randf_range(0.01, 0.05)).timeout
