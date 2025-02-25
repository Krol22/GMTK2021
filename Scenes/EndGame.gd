extends Control

onready var restart_button = $MarginContainer/VBoxContainer/MarginContainer/CenterContainer/HBoxContainer/TextureButton
onready var exit_button = $MarginContainer/VBoxContainer/MarginContainer/CenterContainer/HBoxContainer/TextureButton

func _on_restart_pressed():
	$"/root/SceneTransition".change_scene()
	yield($"/root/SceneTransition", "scene_hidden")
	$"/root/ButtonPlayer".play()
	assert(get_tree().change_scene("res://Scenes/MenuScene.tscn") == OK)

func _on_exit_pressed():
	$"/root/ButtonPlayer".play()
	$"/root/SceneTransition".change_scene()
	yield($"/root/SceneTransition", "scene_hidden")
	get_tree().quit()
