tool
extends Control

## Atributos Export
export(String, FILE, "*.tscn") var menu_ajustes = ""
export(String, FILE, "*.tscn") var nivel_inicial = ""

## Métodos
func _get_configuration_warning() -> String:
	if menu_ajustes == "":
		return "Chequear Rutas"

	return ""


## Señales Internas
func _on_BotonSalir_pressed() -> void:
	get_tree().quit()


func _on_BotonOpciones_pressed() -> void:
	$BotonSFX.play()
	get_tree().change_scene(menu_ajustes)


func _on_BotonNuevo_pressed() -> void:
	get_tree().change_scene(nivel_inicial)
