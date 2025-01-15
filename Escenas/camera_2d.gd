extends Camera2D

@onready var seguir_jugador = true

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if seguir_jugador:
		position.y = $"../personaje".position.y +538
