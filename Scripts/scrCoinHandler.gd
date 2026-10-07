extends Node

## The value of the coin.
@export var value : int = 2;

func _ready() -> void:
	# Make the label on the coin represent the value.
	$Control/label_number.text = str(value); 

func _on_body_entered(body: Node2D) -> void:
	# If the player is touching the coin...
	if(body.name.contains("Player")):
		# Increase the player's score & delete the coin.
		Globals.PLAYER_SCORE += value;
		queue_free();
		pass
