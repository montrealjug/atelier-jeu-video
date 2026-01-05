class_name MainMenu
extends Node2D


@export var game_scene: PackedScene
@export var confirm_sfx_scene: PackedScene

@onready var play_button: Button = %PlayButton


func _ready() -> void:
	play_button.pressed.connect(_on_play_pressed)
	play_button.grab_focus()

func _on_play_pressed() -> void:
	play_confirm_sfx()
	get_tree().change_scene_to_packed(game_scene)


func play_confirm_sfx() -> void:
	NodeUtil.instance_scene(confirm_sfx_scene, get_tree().root)
