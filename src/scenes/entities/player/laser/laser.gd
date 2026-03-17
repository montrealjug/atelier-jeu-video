class_name Laser
extends Area2D

@export var speed: int = 400;

## The direction the fireball is moving toward
var direction: Vector2 = Vector2.RIGHT
var damage_information: DamageInformation
var is_dying: bool = false


func _ready() -> void:
	body_entered.connect(die)
	area_entered.connect(die)


func _physics_process(delta: float) -> void:
	rotation = direction.angle()
	global_position += direction * speed * delta


## Runs as soon as the fireball collides with a body or area (wall or enemy).
## Hides the sprites, shows particles, and finally gets removed from the game once
## the particles are done emitting.
func die(_element: Node2D) -> void:
	if is_dying:
		return
	is_dying = true
	self.set_deferred("monitoring", false)
	queue_free()
