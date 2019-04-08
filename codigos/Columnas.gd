extends KinematicBody

export var movimiento = 10.0

func _physics_process(delta):
	translation.x = translation.x + movimiento * delta
