extends Control

var nivel_actual = ""


func _ready():
	nivel_actual = DatosJuego.nivel_actual
	DatosJuego.reset()

func _on_BotonReintentar_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene(nivel_actual)
