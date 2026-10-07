### Player Movement
extends CharacterBody2D

## The speed the player is increasing.
@export var playerVelocityIncrease : int = 600

## The maximum speed of the player.
@export var playerMaxSpeed : int = 200

## The wind resistance - slowing the player down.
@export var wind_resistance : int = 1300

## The power in which the player jumps.
@export var playerJumpForce : int = 400

func _physics_process(delta: float) -> void:
	var walk := playerVelocityIncrease * (Input.get_axis(&"player_left", &"player_right"))
	if abs(walk) < playerVelocityIncrease * 0.2:
		velocity.x = move_toward(velocity.x, 0, wind_resistance * delta)
	else:
		velocity.x += walk * delta

	velocity.x = clamp(velocity.x, -playerMaxSpeed, playerMaxSpeed)

	velocity.y += get_gravity().y * delta

	move_and_slide()

	if is_on_floor() and Input.is_action_just_pressed(&"player_jump"):
		velocity.y = -playerJumpForce
