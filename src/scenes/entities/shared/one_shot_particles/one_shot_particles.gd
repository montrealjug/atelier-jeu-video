## Defines a GPUParticles2D that emits when instantiated, and gets removes from the scene tree when
## it's done emitting
class_name OneShotParticles
extends GPUParticles2D


func _ready() -> void:
	emitting = true
	await finished
	queue_free()
