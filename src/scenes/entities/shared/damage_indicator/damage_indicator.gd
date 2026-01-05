class_name DamageIndicator
extends Label


var damage_information: DamageInformation


func _ready() -> void:
	text = str(damage_information.damage)
	## Weird code to animate the label because Control nodes are hard to animate through AnimationPlayer
	await get_tree().process_frame
	position.y -= randi_range(8, 16)
	position.x += randi_range(-4, 4)
	var scale_tween := create_tween().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
	var position_tween := create_tween().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
	position_tween.tween_property(self, "position:y", position.y - 8, 0.1)
	position_tween.chain().tween_property(self, "position:y", position.y + 8, 0.5)
	scale_tween.tween_property(self, "scale", Vector2(0.9, 1.1), 0.1)
	scale_tween.chain().tween_property(self, "scale", Vector2(1.1, 0.9), 0.1)
	scale_tween.chain().tween_property(self, "scale", Vector2(0.9, 1.1), 0.1)
	scale_tween.chain().tween_property(self, "scale", Vector2(1, 1), 0.1)
	scale_tween.chain().tween_property(self, "modulate:a", 0, 0.2)
	await scale_tween.finished
	queue_free()
