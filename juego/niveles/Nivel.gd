tool
extends Node

## Atributos Export
export var menu_game_over = "res://juego/menus/MenuGameOver.tscn"
export var nivel_actual = ""
export var numero_nivel: int = 0
export(String, FILE, "*.tscn") var proximo_nivel = ""


func _ready() -> void:
# warning-ignore:return_value_discarded
	DatosJuego.nivel_actual = get_tree().current_scene.filename
	DatosJuego.num_nivel_actual = numero_nivel
	DatosJuego.nivel_proximo = proximo_nivel
	Eventos.connect("game_over", self, "game_over")

func _get_configuration_warning() -> String:
	if numero_nivel == 0 or proximo_nivel == "":
		return "Chequear valores de Nivel"

	return ""


func game_over():
	DatosJuego.nivel_actual = nivel_actual
# warning-ignore:return_value_discarded
	get_tree().change_scene(menu_game_over)
