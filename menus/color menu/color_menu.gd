extends Control

@export var colors: Array[Color]
@export var grid: GridContainer

const COLOR_SHADER = preload("res://shaders/color.gdshader")

# Called when the node enters the scene tree for the first time.
func _ready():
	for color in colors:
		print(color)
		var button = Button.new()
		button.custom_minimum_size = Vector2(20, 20)
		var mat = ShaderMaterial.new()
		mat.shader = COLOR_SHADER
		mat.set_shader_parameter("color", color)
		button.material = mat
		grid.add_child(button)
