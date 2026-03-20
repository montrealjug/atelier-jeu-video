## Gère les effets visuels de la tempête électrique en vague 6
extends CanvasLayer

@export var lightning_strike_scene: PackedScene # la scène de zone de foudre

@onready var dark_overlay: ColorRect = $DarkOverlay # le voile sombre
@onready var flash_overlay: ColorRect = $FlashOverlay # l'éclair blanc
@onready var flash_timer: Timer = $FlashTimer # le timer entre deux éclairs
@onready var lightning_spawn_timer: Timer = $LightningSpawnTimer # le timer de spawn


func _ready() -> void:
	Signals.wave_started.connect(_on_wave_started) # écoute le signal de début de vague
	flash_timer.timeout.connect(_on_flash_timer_timeout) # écoute la fin du timer
	lightning_spawn_timer.timeout.connect(_on_lightning_spawn_timer_timeout)


## Déclenche la tempête quand la vague 6 commence
func _on_wave_started(wave_number: int) -> void:
	if wave_number == 1: # seulement en vague 6 ?
		dark_overlay.visible = true # assombrit l'arène
		_programmer_prochain_eclair() # lance le premier éclair
		lightning_spawn_timer.start() # commence à faire apparaître les zones


## Programme le prochain flash dans un délai aléatoire de 5 à 15 secondes
func _programmer_prochain_eclair() -> void:
	flash_timer.wait_time = randf_range(3.0, 10.0) # durée aléatoire
	flash_timer.start() # démarre le timer


## Quand le timer se termine : fait clignoter l'écran
func _on_flash_timer_timeout() -> void:
	flash_overlay.visible = true # flash blanc !
	await get_tree().create_timer(0.12).timeout # attend 0.12 secondes
	flash_overlay.visible = false # éteint le flash
	_programmer_prochain_eclair() # prépare le prochain


## Fait apparaître entre 0 et 10 zones de foudre dans l'arène
func _on_lightning_spawn_timer_timeout() -> void:
	var nombre = randi_range(30, 70) # combien d'éclairs ce tour-ci ?
	for i in nombre: # répète "nombre" fois
		_spawn_un_eclair()


## Place une zone de foudre à une position aléatoire dans la zone de jeu
func _spawn_un_eclair() -> void:
	if lightning_strike_scene == null: # la scène est-elle assignée ?
		return
	var zone = GameData.spawn_area # la zone où les ennemis apparaissent
	var pos = Vector2(
		randf_range(zone.position.x, zone.end.x), # x aléatoire dans la zone
		randf_range(zone.position.y, zone.end.y)  # y aléatoire dans la zone
	)
	var strike = lightning_strike_scene.instantiate() # crée une zone de foudre
	strike.global_position = pos # place-la dans le monde
	GameData.game_root.add_child(strike) # ajoute-la à la scène principale
