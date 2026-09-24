extends Area2D

var collected: bool = false

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if collected:
		return
		
	if body.name == "Player":
		collected = true
		get_tree().change_scene_to_file("res://win.tscn")
