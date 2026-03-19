class_name FireBall
extends Area2D


@export var spark_particles: GPUParticles2D
@export var trail_particles: GPUParticles2D
@export var collision_shape: CollisionShape2D
@export var sprite: Sprite2D
@export var shadow_sprite: Sprite2D
@export var speed: int


## The direction the fireball is moving toward
var direction: Vector2 = Vector2.RIGHT
var damage_information: DamageInformation


func _ready() -> void:
	body_entered.connect(die)
	area_entered.connect(die)
	sprite.modulate = Color(0.5, 0, 1)  # boules de feu violettes !
	spark_particles.modulate = Color(0, 1, 0)


func _physics_process(delta: float) -> void:
	global_position += direction * speed * delta


## Runs as soon as the fireball collides with a body or area (wall or enemy).
## Hides the sprites, shows particles, and finally gets removed from the game once
## the particles are done emitting.
func die(_element: Node2D) -> void:
	trail_particles.emitting = false
	spark_particles.emitting = true
	collision_shape.call_deferred("set_disabled", true)
	sprite.hide()
	shadow_sprite.hide()
	await trail_particles.finished
	queue_free()
