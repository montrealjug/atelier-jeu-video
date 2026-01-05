class_name Arrow
extends Area2D


@export var collision_shape: CollisionShape2D
@export var sprite: Sprite2D
@export var speed: int
@export var damage_information: DamageInformation

## The direction the fireball is moving toward
var direction: Vector2 = Vector2.RIGHT


func _ready() -> void:
	body_entered.connect(die)
	area_entered.connect(die)
	rotation = Vector2.RIGHT.angle_to(direction)


func _physics_process(delta: float) -> void:
	global_position += direction * speed * delta


func die(_element: Node2D) -> void:
	queue_free()
