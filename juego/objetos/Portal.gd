class_name PortalNivel
extends Area

## Atributos Export
export(String, FILE, "*.tscn") var proximo_nivel = ""


## Señales Internas
func _on_body_entered(body: Node) -> void:
	if proximo_nivel != "":
		get_tree().change_scene(proximo_nivel)
