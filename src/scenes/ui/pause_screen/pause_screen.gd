class_name PauseScreen
extends Control


@export var confirm_sfx_scene: PackedScene

@onready var restart_button: Button = %RestartButton
@onready var menu_button: Button = %MenuButton


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	hide()
	restart_button.pressed.connect(_on_restart)
	menu_button.pressed.connect(_on_menu)


func _on_restart() -> void:
	play_confirm_sfx()
	get_tree().paused = false
	hide()
	get_tree().reload_current_scene()


func _on_menu() -> void:
	play_confirm_sfx()
	get_tree().paused = false
	hide()
	get_tree().change_scene_to_file("res://src/scenes/ui/main_menu/main_menu.tscn")


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		if not get_tree().paused:
			get_tree().paused = true
			restart_button.grab_focus()
			show()
		else:
			get_tree().paused = false
			hide()


func play_confirm_sfx() -> void:
	NodeUtil.instance_scene(confirm_sfx_scene, get_tree().root)
