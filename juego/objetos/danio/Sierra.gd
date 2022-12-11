extends Area


## Señales Internas
func _on_body_entered(body: Node) -> void:
	var player: Godoton = body
	player.respawn()
