class_name EnemySprite
extends Sprite2D


@export var enemy: CharacterBody2D
@export var health: EnemyHealth


var flash_tween: Tween


func _ready() -> void:
	health.damage_taken.connect(_on_damage_taken)


func _physics_process(_delta: float) -> void:
	if enemy.velocity.x > 0:
		flip_h = false
	elif enemy.velocity.x < 0:
		flip_h = true


func _on_damage_taken(_previous_hp: int, _current_hp: int) -> void:
	if flash_tween: 
		flash_tween.kill()
	flash_tween = create_tween().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
	flash_tween.tween_method(set_flash_value, 1.0, 0.0, 0.2)
	

func set_flash_value(value: float) -> void:
	material.set_shader_parameter("flash_value", value)
