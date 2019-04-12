extends RigidBody

var puedeAletear = true


func _ready():
	gravity_scale = get_parent().escala_de_gravedad #la gravedad la manejo desde el script nivel 1 con el export
	#$AnimationTree.set("parameters/OneShot/active",true)
	#get_tree().get_nodes_in_group("volar")[0].play()

func _physics_process(delta): 
	if get_parent().gameOver == false:
		if Input.is_action_just_pressed("clickIzquierdo"): #si presiono el boton y si ya paso el tiempo para volver a aletear
			linear_velocity.y = 0
			linear_velocity.y = get_parent().impulso_Del_pajaro
			#$AnimationTree[parameters/OneShot/active] = true
			get_tree().get_nodes_in_group("volar")[0].play()
			$AnimationTree.set("parameters/OneShot/active",true)
			#yield(get_tree().create_timer(0.9),"timeout") #detiene el script por 1 segundo para que no se reprodusca la animacion a cada rato
			#puedeAletear = true #recien ahora despues de los 5 segundospuede aletear denuevo
			#angular_velocity.z =0.3
	if get_parent().gameOver == true:	
		$AnimationTree.active = false
		if Input.is_action_just_pressed("clickIzquierdo"):
			get_tree().reload_current_scene()
			get_parent().gameOver == false	
			$AnimationTree.active = false
			
		
func _on_Area_area_entered(area):
	if area.is_in_group("suelo"): #si toca el suelo
		if get_parent().gameOver == false:  #si game over es igual a falso
			get_tree().get_nodes_in_group("hit")[0].play() #sonido golpe
			get_parent().gameOver = true #game over igual verdadero
			print("esta muerto")
			gravity_scale = get_parent().escala_de_gravedad_al_morir #aumenta gravedad al morir
			get_tree().get_nodes_in_group("musica")[0].stop() #paro la musica
		
	if area.is_in_group("techo"):#si toca el techo
		if get_parent().gameOver == false: #si game over es igual a falso
			get_tree().get_nodes_in_group("hit")[0].play()  #sonido golpe
			get_parent().gameOver = true #game over igual verdadero
			print("esta muerto")
			gravity_scale = get_parent().escala_de_gravedad_al_morir  #aumenta gravedad al morir
			get_tree().get_nodes_in_group("musica")[0].stop() #paro la musica
			
	if area.is_in_group("columnas"):
		if get_parent().gameOver == false: 
			get_tree().get_nodes_in_group("hit")[0].play()
			get_parent().gameOver = true
			print("esta muerto")	
			gravity_scale = get_parent().escala_de_gravedad_al_morir
			get_tree().get_nodes_in_group("musica")[0].stop() #paro la musica


