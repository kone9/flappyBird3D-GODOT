extends Spatial


func _process(delta):
	if get_parent().gameOver == false:
		translation.x = translation.x + get_parent().velocidadDesplazamientoX * delta #velocidad de desplazamiento
		if translation.x < 0: #si la posición es menor que cero
			var aleatoriedadEn_Y_DeColumnas = rand_range(get_parent().Y_maximo,get_parent().Y_minimo) #valor maximo y minimo de las columnas obtenido desde el script nivel 1
			translation.x = 2400  - 400#la columna vuelve atras de todo
			translation.y =aleatoriedadEn_Y_DeColumnas #posicion de las columnas en "Y" luego de reiniciar su posicion
		
"""func _on_Area_body_entered(body):
	if body.is_in_group("pajaro"):
		print("pase por las columnas")
		get_parent().puntuacion = get_parent().puntuacion + 1
		get_tree().get_nodes_in_group("puntos")[0].play()"""
		
		
func _on_Area_body_exited(body):
	if body.is_in_group("pajaro") and get_parent().gameOver == false: #si esta en el grupo pajaro y no es game over
		get_parent().puntuacion = get_parent().puntuacion + 1 ##sumo puntacion
		get_tree().get_nodes_in_group("puntos")[0].play() #activo sonido puntos 
		get_parent().contador_de_la_tipo_camara = get_parent().contador_de_la_tipo_camara + 1 #sumo puntos al contador para cambiar de camara
