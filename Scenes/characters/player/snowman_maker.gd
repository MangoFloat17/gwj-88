extends Node
var parent: Node2D
var snowman:PackedScene=preload("res://Scenes/characters/snowman/snowman.tscn")
var is_on_cooldown:bool=false
func _ready() -> void:
	parent = get_parent()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("build_snowman") and is_on_cooldown==false and InventoryManager.inventory.get("snowball")>0:
		var instance = snowman.instantiate()
		instance.position = parent.position
		get_tree().current_scene.add_child(instance)
		print(instance," spawned at ",instance.position)
		InventoryManager.
		cooldown()
		
func cooldown():
	is_on_cooldown = true
