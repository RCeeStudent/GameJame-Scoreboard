extends Node2D

@export var digits : int = 5;
const scoreblockNode = preload("res://Objects/scoreblock.tscn");
@export var scoreblocks : Array;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	for i in range(digits):
		var node = scoreblockNode.instantiate();
		add_child(node);
		node.position.x = (i * 32);
		scoreblocks.push_back(node);
		node.value = -1;
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var scoreToString : String = str(Globals.PLAYER_SCORE);
	
	var scoreToString : String = String.num_int64(Globals.PLAYER_SCORE, 2, false);
	
	var scoreSize : int = scoreToString.length();
	
	var digit : int = -1;
	var tens : int = -1;
	var hundreds : int = -1;
	var thousands : int = -1;
	var tenThounsands : int = -1;
	var hunThounsands : int = -1;
	var mill : int = -1;
	var tenMil : int = -1;
	
	if(scoreSize >= 1):
		digit = scoreToString[scoreSize - 1].to_int()
		
	if(scoreSize >= 2):
		tens = scoreToString[scoreSize - 2].to_int()
		
	if(scoreSize >= 3):
		hundreds = scoreToString[scoreSize - 3].to_int()
		
	if(scoreSize >= 4):
		thousands = scoreToString[scoreSize - 4].to_int()
		
	if(scoreSize >= 5):
		tenThounsands = scoreToString[scoreSize - 5].to_int()
		
	if(scoreSize >= 6):
		hunThounsands = scoreToString[scoreSize - 6].to_int()
		
	if(scoreSize >= 7):
		mill = scoreToString[scoreSize - 6].to_int()
		
	if(scoreSize >= 8):
		tenMil = scoreToString[scoreSize - 6].to_int()
	
	if((scoreblocks.size() - 1) >= 0):
		scoreblocks[scoreblocks.size() - 1].value = digit
		
	if((scoreblocks.size() - 2) >= 0):
		scoreblocks[scoreblocks.size() - 2].value = tens
		
	if((scoreblocks.size() - 3) >= 0):
		scoreblocks[scoreblocks.size() - 3].value = hundreds
	
	if((scoreblocks.size() - 4) >= 0):
		scoreblocks[scoreblocks.size() - 4].value = thousands
		
	if((scoreblocks.size() - 5) >= 0):
		scoreblocks[scoreblocks.size() - 5].value = tenThounsands
		
	if((scoreblocks.size() - 6) >= 0):
		scoreblocks[scoreblocks.size() - 6].value = hunThounsands
		
	if((scoreblocks.size() - 7) >= 0):
		scoreblocks[scoreblocks.size() - 7].value = mill
	
	if((scoreblocks.size() - 8) >= 0):
		scoreblocks[scoreblocks.size() - 8].value = tenMil
	
	pass
