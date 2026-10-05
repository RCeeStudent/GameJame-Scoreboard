extends Node

@export var value : int = 2;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Control/label_number.text = str(value);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print(body);
	if(body.name.contains("Player")):
		Globals.PLAYER_SCORE += value;
		queue_free();
		pass
