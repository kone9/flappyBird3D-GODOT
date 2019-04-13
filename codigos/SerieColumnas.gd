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
	if body.is_in_group("pajaro") and get_parent().gameOver == false:
		get_parent().puntuacion = get_parent().puntuacion + 1
		get_tree().get_nodes_in_group("puntos")[0].play()
		print(get_parent().estadocamara)
