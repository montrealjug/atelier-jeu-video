class_name WaveIndicator
extends Control


const WAVE_TEMPLATE := "wave %s / %s"

@onready var current_wave_number: Label = %CurrentWaveNumber
@onready var max_wave_number: Label = %MaxWaveNumber


func _ready() -> void:
	Signals.wave_started.connect(_on_wave_started)
	max_wave_number.text = str(len(GameData.waves_data))


func _on_wave_started(wave_number: int) -> void:
	current_wave_number.text = str(wave_number)
