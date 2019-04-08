extends KinematicBody

#export (float) var movimiento = 10


func _ready():
	translation.x = self.translation.x


func _process(delta):
	#translation.x = translation.x + ControladorDelJuego.velocidadDesplazamientoX * delta #el movimiento es igual al desplazamiento en X de controlador del juego
	if get_parent().get_parent().gameOver == false:
		translation.x = translation.x + get_parent().get_parent().velocidadDesplazamientoX * delta
		if translation.x <= -1000:
			reposicionarSuelo()


func reposicionarSuelo():
	print("vuelve plataforma 1")
	translation.x = 2000