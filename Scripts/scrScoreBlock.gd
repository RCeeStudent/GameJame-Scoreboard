### ScoreblockClass

extends Node

## The current value of the block.
@export var value : int = -1;

## The [Label] of the block.
@export var label : Label;

## The alpha that the block goes when the value is -1.
@export var half_color : float = 0.42;

## The collision box of the block.
@export var collisionShape : CollisionShape2D;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# If the value is -1
	if(value == -1):
		# "Disable" the block.
		label.text = "";
		collisionShape.disabled = true;
		$Graphics.modulate = Color(1.0, 1.0, 1.0, half_color);
		return;
	
	# Set the block data.
	label.text = str(value);
	collisionShape.disabled = false;
	$Graphics.modulate = Color(1.0, 1.0, 1.0, 1.0);
