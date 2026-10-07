extends Area2D

## The [Camera2D] of the [Area2D].
@export var areaCamera : Camera2D = null;

func _on_body_entered(body: Node2D) -> void:
	# If the touching body is the player
	if(body.name.to_lower().contains("player")): 
		# Is there currently a camera in use?
		if(Globals.CURRENT_CAMERA != null):
			Globals.CURRENT_CAMERA.enabled = false
			
		# Make our camera the current camera
		Globals.CURRENT_CAMERA = areaCamera;
		Globals.CURRENT_CAMERA.enabled = true
