extends CharacterBody2D

var direccion : Vector2
@onready var velocidad :float = 60000

func _ready():
	direccion.x = 1

func _physics_process(delta: float):
	if Input.is_action_just_pressed("click") and is_on_wall():
		if direccion.x == 1:
			direccion.x = -1
		else:
			direccion.x = 1
	
	velocity.x = direccion.x * velocidad * delta
	velocity.y = 0
	
	move_and_slide()
