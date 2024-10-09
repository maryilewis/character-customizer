extends CanvasLayer

signal width(value: float)
signal height(value: float)
signal body_color(value: Color)

signal clothes_color(value: Color)
signal hat(value: bool)
signal hat_color(value: Color)

func _on_height_value_changed(value):
	height.emit(value)


func _on_width_value_changed(value):
	width.emit(value)


func _on_body_color_changed(color):
	body_color.emit(color)


func _on_clothes_color_color_changed(color):
	clothes_color.emit(color)


func _on_hat_color_changed(color):
	hat_color.emit(color)


func _on_hat_toggled(toggled_on):
	hat.emit(toggled_on)
