extends Node2D
class_name Level;

@onready var player: Player = $flappyPlayer

var game_started : bool = false;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_reset_area_body_entered(body: Node2D) -> void:
	body.set_deferred("global_position", Vector2(get_node("startPointPipe").global_position.x, randi_range(80, 500)))
