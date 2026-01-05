## And Area that emits a signal when touched by an enemy's attack
class_name PlayerHurtBox
extends Area2D


signal hurt(damage_information: DamageInformation)

## A list of all the current enemies touching the player
var areas_touching: Array[Node2D] = []


func _ready() -> void:
	area_entered.connect(_on_hit)
	area_exited.connect(_on_exited)
	body_entered.connect(_on_hit)
	body_exited.connect(_on_exited)


## When an enemy touches the player ,add this enemy to the areas_touching list, and create a timer
## so if the enemy stays on the player, it deals continuous damage to him.
## If we don't do that, the enemy will just deal once the damage to the player
func _on_hit(other: Node2D) -> void:
	if not other in areas_touching:
		areas_touching.append(other)
		var timer := create_timer()
		add_child(timer)
		timer.start()
		timer.timeout.connect(func(): _on_timer_timeout(timer, other))
	var damage_information: DamageInformation = other.get("damage_information")
	if damage_information != null:
		hurt.emit(other.damage_information)
	else:
		printerr("PlayerHurtBox - Received damage from %s but element does not have a damage_information value" % [other])


func _on_exited(other: Node2D) -> void:
	if other in areas_touching:
		areas_touching.erase(other)


func create_timer() -> Timer:
	var timer := Timer.new()
	timer.wait_time = 1.0
	return timer


func _on_timer_timeout(timer: Timer, area: Node2D)-> void:
	if area in areas_touching:
		_on_hit(area)
	else:
		timer.queue_free()
