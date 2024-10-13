@tool
class_name LeftTabButton extends PanelContainer

signal pressed

## TODO tooltip?
@export var text: String
## Button icon
@export var icon: Texture2D:
	set(value):
		$button.icon = icon
		icon = value
		notify_property_list_changed()

func _ready():
	$button.icon = icon

var active_tab: bool:
	set(value):
		if value:
			z_index = 1
		else:
			z_index = 0

func _on_button_pressed():
	pressed.emit()
