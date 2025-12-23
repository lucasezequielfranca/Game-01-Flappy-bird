extends AnimatableBody2D
@onready var level: Level = $".."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_deferred("global_position", Vector2(global_position.x, randi_range(80, 500)))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if (level.game_started):
		position.x = position.x - 5;
