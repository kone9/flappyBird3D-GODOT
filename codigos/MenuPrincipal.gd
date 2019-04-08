extends Spatial

export(PackedScene) var escenaPrincipal

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_pressed("clickIzquierdo"):
		get_tree().change_scene_to(escenaPrincipal)
