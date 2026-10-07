extends Area2D

func _on_body_entered(body: Node2D) -> void:
	# When the player touches the area...
	if(body.name.to_lower() == "player"):
		# Restart the level...
		Globals.PLAYER_SCORE = 0;
		get_tree().reload_current_scene();
