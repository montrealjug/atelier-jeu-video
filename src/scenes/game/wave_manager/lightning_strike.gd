## Un éclair qui tombe sur une zone : rond jaune clignotant, puis impact d'éclair animé
extends Node2D

@onready var warning: Sprite2D = $Warning # le rond jaune d'avertissement
@onready var strike: AnimatedSprite2D = $Strike # l'animation d'éclair
@onready var strike_timer: Timer = $StrikeTimer # le timer de 3 secondes


func _ready() -> void:
	strike_timer.timeout.connect(_on_strike_timer_timeout) # écoute la fin du timer
	_pulse_warning() # lance l'animation de clignotement


## Fait pulser le rond en boucle (même animation que l'apparition des ennemis !)
func _pulse_warning() -> void:
	var tween = create_tween().set_loops() # boucle infinie
	tween.tween_property(warning, "scale", Vector2(1.2, 1.0), 0.35) # grossit
	tween.parallel().tween_property(warning, "modulate", Color(0.185, 0.692, 0.915, 1.0), 0.35) # devient orange
	tween.tween_property(warning, "scale", Vector2(0.85, 0.75), 0.35) # rétrécit
	tween.parallel().tween_property(warning, "modulate", Color(0.905, 0.906, 0.995, 1.0), 0.35) # revient jaune


## Quand les 3 secondes sont écoulées : déclenche l'impact !
func _on_strike_timer_timeout() -> void:
	warning.visible = false # cache l'avertissement
	strike.visible = true # montre l'éclair
	strike.play("default") # joue l'animation
	_infliger_degats() # vérifie si le joueur est là
	await strike.animation_finished # attend la fin de l'animation
	queue_free() # supprime cette zone


## Vérifie si le joueur est sur la zone, et lui inflige des dégâts
func _infliger_degats() -> void:
	var player = GameData.player
	if player == null: # pas de joueur ?
		return
	var distance = global_position.distance_to(player.global_position)
	if distance < 24: # le joueur est dans la zone ?
		var dmg = DamageInformation.new() # crée un objet de dégâts
		dmg.damage = 1 # 1 point de dégât
		player.player_health.hurt_box.hurt.emit(dmg) # inflige les dégâts !
