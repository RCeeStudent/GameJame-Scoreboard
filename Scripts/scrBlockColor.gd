extends Node

@export var blockColor : Color = Color(255, 255, 255, 255);
@export var spriteRenderer : Sprite2D;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spriteRenderer.modulate = blockColor;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
