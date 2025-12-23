extends CharacterBody2D
class_name Player

@onready var level: Level = $".."

@export var jumpSpeed : int = 300;

var alive : bool = false;

func get_input():
	if (Input.is_action_just_pressed("jump")):
		velocity.y = -jumpSpeed;

func _physics_process(delta: float) -> void:
	if (alive):
		velocity += get_gravity() * delta;
		get_input();
		move_and_slide();
		if (velocity.y < 0):
			rotation_degrees = -35;
		else:
			rotation_degrees = 35;
	elif (!alive and !level.game_started):
		if (Input.is_action_just_pressed("jump")):
			alive = true;
			level.game_started = true;
