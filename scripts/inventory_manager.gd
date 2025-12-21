extends Node

var inventory: Dictionary = Dictionary()

signal inventroy_changed

func add_collectable(collectable_name: String) -> void:
	inventory.get_or_add(collectable_name)
	
	if inventory[collectable_name]==null:
		inventory[collectable_name] = 1
	else: 
		inventory[collectable_name] +=1
	inventroy_changed.emit()
	print("inventory",inventory)

func remove(collectable_name: String,number_to_remove:int):
	if inventory[collectable_name]==null:
		print("no inventory: ",collectable_name)
	
