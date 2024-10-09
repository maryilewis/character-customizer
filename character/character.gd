class_name Character extends Node3D

@export var scalable: Node3D
@export var body_cylinder: MeshInstance3D
@export var clothes_cylinder: MeshInstance3D
@export var hat: MeshInstance3D
@export var eyes: Node3D

const hat_original_y = 1.5

var width : float :
	set(value):
		scalable.transform.basis[0].x = value
		scalable.transform.basis[2].z = value
		eyes.position.z = (value/2) - .5
		print(eyes.position.z)

var height : float :
	set(value):
		scalable.transform.basis[1].y = value
		hat.position.y = hat_original_y + (value - 1)
		eyes.position.y = (value - 1)

var body_color : Color :
	set(value):
		var mat := body_cylinder.get_active_material(0)
		mat.albedo_color = value


var clothes_color : Color :
	set(value):
		var mat := clothes_cylinder.get_active_material(0)
		mat.albedo_color = value
		
var hat_color : Color :
	set(value):
		var mat := hat.get_active_material(0)
		mat.albedo_color = value

# TODO enum of WHICH hat
var wear_hat: bool :
	set(value):
		hat.visible = value

func _process(delta):
	rotation.y += delta
