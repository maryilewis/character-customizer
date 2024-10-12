extends CanvasLayer

#region character attributes
signal width(value: float)
signal height(value: float)
signal body_color(value: Color)

signal clothes_color(value: Color)
signal hat(value: bool)
signal hat_color(value: Color)
#endregion

#region emit updated character attributes
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
#endregion

#region show menu sections
@export var button_container: Control

@export_category("SubMenus")
@export var body_menu: Control
@export var face_menu: Control
@export var clothes_menu: Control
@export var hat_menu: Control
@export var background_menu: Control

func _hide_menus():
	body_menu.visible = false;
	face_menu.visible = false;
	clothes_menu.visible = false;
	hat_menu.visible = false;
	background_menu.visible = false;

func show_body_menu():
	_hide_menus()
	body_menu.visible = true;
	
func show_face_menu():
	_hide_menus()
	face_menu.visible = true;
	
func show_hat_menu():
	_hide_menus()
	hat_menu.visible = true;
	
func show_clothes_menu():
	_hide_menus()
	clothes_menu.visible = true;
	
func show_background_menu():
	_hide_menus()
	background_menu.visible = true;

#endregion
