extends Area2D

@export var areaCamera : Camera2D = null;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if(body.name.to_lower().contains("player")):
		if(Globals.CURRENT_CAMERA != null):
			Globals.CURRENT_CAMERA.enabled = false
			
		Globals.CURRENT_CAMERA = areaCamera;
		Globals.CURRENT_CAMERA.enabled = true
