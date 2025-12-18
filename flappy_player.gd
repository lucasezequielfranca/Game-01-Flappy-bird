extends CharacterBody2D

@export var jumpSpeed : int = 300;

func get_input():
	if (Input.is_action_just_pressed("jump")):
		velocity.y = -jumpSpeed;

func _physics_process(delta: float) -> void:
	velocity += get_gravity() * delta;
	get_input();
	move_and_slide();
	if (velocity.y < 0):
		rotation_degrees = -35;
	else:
		rotation_degrees = 35;
