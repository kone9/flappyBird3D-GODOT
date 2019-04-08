extends Spatial


export var velocidadDesplazamientoX = -50
export var impulso_Del_pajaro = 60
export (float) var Y_minimo = 150
export (float) var Y_maximo = 300
export (float) var escala_de_gravedad= 5.0
export (float) var escala_de_gravedad_al_morir = 50
#export var cantidadDeColumnas = 5
#export var distancia_entre_columnas = 5



var puntuacion = 0 #puntuacion inicial
var gameOver = false #el juego puede comenzar gameOver es falso
 


func _ready():
	randomize() #esto crea una semilla aleatoria para cada inicio de programa
	valores_Iniciales_de_las_columnas() #llamo a la funcion valores Iniciales de las columnas
	
	

func _process(delta):
	if gameOver == false:
		$puntos.set_text("Puntos : " + str(puntuacion)) #cambio el texto de puntos y los suma
		$pu
		estadoPuntuacion()

func estadoPuntuacion():
	if puntuacion >= 5: #si puntuacion es mayor a 5
		velocidadDesplazamientoX = -55 #al bajar sube la velocidad de desplazamiento
		camaraPrimeraPersona() #camara es la de primera persona
	if puntuacion >= 10:
		velocidadDesplazamientoX = -60
		camaraTerceraPersona()
	if puntuacion >= 15:
		velocidadDesplazamientoX = -65
		camaraLateral()
	if puntuacion >= 20:
		velocidadDesplazamientoX = -70
		camaraPrimeraPersona()
	if puntuacion >= 30:
		velocidadDesplazamientoX = -75
		camaraTerceraPersona()
	if puntuacion >= 60:
		velocidadDesplazamientoX = -80
		camaraLateral()
	if puntuacion >= 100:
		velocidadDesplazamientoX = -85
		camaraPrimeraPersona()
	if puntuacion >= 200:
		velocidadDesplazamientoX = -90
		camaraTerceraPersona()
	if puntuacion >= 250:
		velocidadDesplazamientoX = -95
		camaraLateral()
	if puntuacion >= 300:
		velocidadDesplazamientoX = -100
		camaraPrimeraPersona()
	if puntuacion >= 1000:
		velocidadDesplazamientoX = -110
		camaraTerceraPersona()
	if puntuacion >= 2000:
		velocidadDesplazamientoX = -120
		camaraPrimeraPersona()
		
		
		
func camaraLateral(): #camara lateral configuracion
	$CameraLateral.current = true
	$flappyBird/RiggingPAJARO/PAJARO.visible = true
	$flappyBird/CameraPrimeraPersona.current = false
	$CameraTerceraPersona.current = false
			
	
func camaraTerceraPersona():#camara terceraPersona configuracion
	$CameraTerceraPersona.current = true
	$flappyBird/RiggingPAJARO/PAJARO.visible = true
	$flappyBird/CameraPrimeraPersona.current = false
	$CameraLateral.current = false

func camaraPrimeraPersona(): #camara primeraPersona configuracion
	$flappyBird/CameraPrimeraPersona.current = true
	$flappyBird/RiggingPAJARO/PAJARO.visible = false
	$CameraTerceraPersona.current = false
	$CameraLateral.current = false
	
	
		
func valores_Iniciales_de_las_columnas():
	var aleatoriedadEn_Y_DeColumnas = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas
	var aleatoriedadEn_Y_DeColumnas2 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas 
	var aleatoriedadEn_Y_DeColumnas3 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas 
	var aleatoriedadEn_Y_DeColumnas4 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas 
	var aleatoriedadEn_Y_DeColumnas5 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas 
	var aleatoriedadEn_Y_DeColumnas6 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas 
	var aleatoriedadEn_Y_DeColumnas7 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas 
	var aleatoriedadEn_Y_DeColumnas8 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas 
	var aleatoriedadEn_Y_DeColumnas9 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas
	var aleatoriedadEn_Y_DeColumnas10 = rand_range(Y_maximo,Y_minimo)#valor maximo y minimo de las columnas  
	$columnas.translation.y = aleatoriedadEn_Y_DeColumnas #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas2.translation.y = aleatoriedadEn_Y_DeColumnas2 #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas3.translation.y = aleatoriedadEn_Y_DeColumnas3 #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas4.translation.y = aleatoriedadEn_Y_DeColumnas4 #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas5.translation.y = aleatoriedadEn_Y_DeColumnas5 #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas6.translation.y = aleatoriedadEn_Y_DeColumnas6 #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas7.translation.y = aleatoriedadEn_Y_DeColumnas7 #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas8.translation.y = aleatoriedadEn_Y_DeColumnas8 #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas9.translation.y = aleatoriedadEn_Y_DeColumnas9 #posicion en "Y" aleatoria de las columnas al INICIAR
	$columnas10.translation.y = aleatoriedadEn_Y_DeColumnas10 #posicion en "Y" aleatoria de las columnas al INICIAR
		


		
		
		
		
		
		
		





