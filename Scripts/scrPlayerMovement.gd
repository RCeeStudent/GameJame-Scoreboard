### Player Movement
extends CharacterBody2D

@export var playerWalkSpeed : int = 600
@export var playerMaxSpeed : int = 200
@export var wind_resistance : int = 1300
@export var player_jump_speed : int = 400


	
func _physics_process(delta: float) -> void:
	var walk := playerWalkSpeed * (Input.get_axis(&"player_left", &"player_right"))
	if abs(walk) < playerWalkSpeed * 0.2:
		velocity.x = move_toward(velocity.x, 0, wind_resistance * delta)
	else:
		velocity.x += walk * delta

	velocity.x = clamp(velocity.x, -playerMaxSpeed, playerMaxSpeed)

	velocity.y += get_gravity().y * delta

	move_and_slide()

	if is_on_floor() and Input.is_action_just_pressed(&"player_jump"):
		velocity.y = -player_jump_speed
