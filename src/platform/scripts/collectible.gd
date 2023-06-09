extends Area2D

@export var sprite: Sprite2D
#would need logic to update the Sprite value

func _on_body_entered(body):
		if body.name == "Player":
			var tween = get_tree().create_tween()
			
			#Load scene
			tween.tween_property(self, "position", position - Vector2(0,0.25), 0.25)
			tween.tween_property(self, "modulate:a", 0, 0.2) #this as a separate tween makes it a little snappier?
			tween.tween_callback(queue_free)
