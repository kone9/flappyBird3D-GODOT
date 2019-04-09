extends Camera

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translation.y = get_tree().get_nodes_in_group("pajaro")[0].translation.y
	translation.x = get_tree().get_nodes_in_group("pajaro")[0].translation.x  
