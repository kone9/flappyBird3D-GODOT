extends Spatial

export (float) var movimiento = 10

func _ready():
	translation.x = 1000


func _process(delta):
	if get_parent().get_parent().gameOver == false:
		translation.x = translation.x + get_parent().get_parent().velocidadDesplazamientoX * delta
		if translation.x <= -1000:
			reposicionarSuelo()


func reposicionarSuelo():
	translation.x = 2000