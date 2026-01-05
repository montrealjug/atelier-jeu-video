class_name DeathScreen
extends Control


@export var confirm_sfx_scene: PackedScene

@onready var restart_button: Button = %RestartButton
@onready var menu_button: Button = %MenuButton


func _ready() -> void:
	hide()
	restart_button.pressed.connect(_on_restart)
	menu_button.pressed.connect(_on_menu)
	GameData.player.died.connect(_on_player_died)


func _on_restart() -> void:
	play_confirm_sfx()
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_menu() -> void:
	play_confirm_sfx()
	get_tree().paused = false
	get_tree().change_scene_to_file("res://src/scenes/ui/main_menu/main_menu.tscn")


func _on_player_died() -> void:
	get_tree().paused = true
	show()


func play_confirm_sfx() -> void:
	NodeUtil.instance_scene(confirm_sfx_scene, get_tree().root)
