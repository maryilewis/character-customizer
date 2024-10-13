extends Node

@export var character: Character
@export var menu: CharacterMenuNode

func _ready():
	create_snapshot()


func _on_menu_height(value):
	character.height = value

func _on_menu_width(value):
	character.width = value


func _on_menu_body_color(value):
	character.body_color = value
	create_snapshot()


func _on_menu_clothes_color(value):
	character.clothes_color = value
	create_snapshot()


func _on_menu_hat(value):
	character.wear_hat = value
	create_snapshot()


func _on_menu_hat_color(value):
	character.hat_color = value
	create_snapshot()


func on_random():
	print("randomize all values on character and in the menu and create a single snapshot")

var snap_index = 0
var snapshots := []
var snap_shift = false #don't create snapshots while moving backwards through snapshots

func create_snapshot():
	if !snap_shift:
		print("create snapshot", snap_index)
		var new_snapshot = {
			"height": character.height,
			"width": character.width,
			"body_color": character.body_color,
			"clothes_color": character.clothes_color,
			"wear_hat": character.wear_hat,
			"hat_color": character.hat_color
		}
		snapshots.append(new_snapshot)
		print(new_snapshot)
		snap_index += 1
#		#TODO update undo redo button enabledness

func undo():
	if snap_index > 0:
		snap_index -= 1
		apply_snapshot()

func redo():
	if snapshots.size() > snap_index + 1:
		snap_index += 1
		apply_snapshot()

func apply_snapshot():
	snap_shift = true
	var current_snapshot = snapshots[snap_index]
	character.height = current_snapshot.height
	character.width = current_snapshot.width
	character.body_color = current_snapshot.body_color
	character.clothes_color = current_snapshot.clothes_color
	character.wear_hat = current_snapshot.wear_hat
	character.hat_color = current_snapshot.hat_color
	snap_shift = false


#class Snapshot:
	#var height
	#var width
	##var eyes # TODO
	#var body_color
	#var clothes_color
	#var wear_hat
	#var hat_color
	##var background # TODO
	#func _init(character: Character):
		#height = character.height
		#width = character.width
		#body_color = character.body_color
		#clothes_color = character.clothes_color
		#wear_hat = character.wear_hat
		#hat_color = character.hat_color
		#
	#
	#
