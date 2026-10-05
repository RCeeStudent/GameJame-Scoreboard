### ScoreblockClass

extends Node

@export var value : int = -1;
@export var label : Label;
@export var half_color : float = 0.42;
@export var collisionShape : CollisionShape2D;



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(value == -1):
		label.text = "";
		collisionShape.disabled = true;
		$Graphics.modulate = Color(1.0, 1.0, 1.0, half_color);
		return;
	
	label.text = str(value);
	collisionShape.disabled = false;
	$Graphics.modulate = Color(1.0, 1.0, 1.0, 1.0);
