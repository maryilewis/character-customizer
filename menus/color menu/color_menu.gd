extends Control

@export var colors: Array[Color]
@export var grid: GridContainer
signal color_selected(value: Color)

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
		button.pressed.connect(select_color.bind(color))
		# TODO: how do we feel about this?
		button.focus_entered.connect(select_color.bind(color))
		grid.add_child(button)

func select_color(color: Color):
	color_selected.emit(color)
