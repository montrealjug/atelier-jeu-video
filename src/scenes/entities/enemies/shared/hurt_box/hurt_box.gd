## And Area that emits a signal when touched by a player's attack
class_name EnemyHurtBox
extends Area2D


signal hurt(damage_information: DamageInformation)


func _ready() -> void:
	area_entered.connect(_on_area_entered)


func _on_area_entered(area: Area2D) -> void:
	var damage_information: DamageInformation = area.get("damage_information")
	if damage_information != null:
		hurt.emit(area.damage_information)
	else:
		printerr("EnemyHurtBox - Received damage from %s but area does not have a damage_information value" % [area])
