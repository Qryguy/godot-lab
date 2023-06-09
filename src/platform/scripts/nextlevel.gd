extends Area2D

#Add the scene in the given level
@export var nlevel: PackedScene

func _on_body_entered(body):
		if body.name == "Player":
			get_tree().change_scene_to_packed(nlevel)

