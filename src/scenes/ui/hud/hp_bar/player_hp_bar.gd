## UI element for the HP bar of the player
class_name PlayerHpBar
extends Control


@onready var hp_bar: TextureProgressBar = %HpBar
@onready var current_hp_label: Label = %CurrentHp
@onready var max_hp_label: Label = %MaxHp

var player: Player
var player_stats: PlayerStats
var player_data: PlayerData
var tween: Tween


func _ready() -> void:
	player = GameData.player
	player_stats = player.stats
	player_data = player.data
	player.health_changed.connect(_on_player_health_changed)
	player.stats_changed.connect(_on_player_stats_changed)
	max_hp_label.text = str(GameData.player.stats.hp_max)


func _on_player_health_changed(_previous_hp: int, _current_hp: int) -> void:
	update_hp_bar()


func update_hp_bar() -> void:
	var current_hp := player_data.hp
	var hp_max := player_stats.hp_max
	current_hp_label.text = str(current_hp)
	max_hp_label.text = str(hp_max)
	var percentage := float(current_hp) / float(hp_max)
	animate_hp_bar(percentage)


## If the player picked up an HP upgrade, update the HP bar
func _on_player_stats_changed(type: UpgradePotion.UpgradeType) -> void:
	if type == UpgradePotion.UpgradeType.HP_MAX:
		update_hp_bar()


func animate_hp_bar(percentage: float) -> void:
	if tween and tween.is_running():
		tween.kill()
	tween = create_tween().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
	tween.tween_property(hp_bar, "value", percentage, 0.2)
