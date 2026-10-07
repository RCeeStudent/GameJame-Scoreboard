extends Node

## The [Color] of the block
@export var blockColor : Color = Color(255, 255, 255, 255);

## The renderer for the sprite
@export var spriteRenderer : Sprite2D;

func _ready() -> void:
	# Set the colour of the sprite to be the block colour
	spriteRenderer.modulate = blockColor;
