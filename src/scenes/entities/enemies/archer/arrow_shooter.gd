class_name ArrowShooter
extends Shooter


@export var arrow_scene: PackedScene

var player: Player


func _ready() -> void:
	player = GameData.player


func shoot() -> void:
	var direction := global_position.direction_to(player.global_position)
	var arrow := NodeUtil.instance_2d_scene_at_location(arrow_scene, self, global_position) as Arrow
	arrow.direction = direction
