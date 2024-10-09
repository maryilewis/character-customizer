extends Node

@export var character: Character

func _on_menu_height(value):
	character.height = value


func _on_menu_width(value):
	character.width = value


func _on_menu_body_color(value):
	character.body_color = value


func _on_menu_clothes_color(value):
	character.clothes_color = value


func _on_menu_hat(value):
	character.wear_hat = value


func _on_menu_hat_color(value):
	character.hat_color = value
