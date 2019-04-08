extends Camera


func _process(delta):
	pass
	translation.y = get_tree().get_nodes_in_group("pajaro")[0].translation.y
	translation.x = get_tree().get_nodes_in_group("pajaro")[0].translation.x 
	