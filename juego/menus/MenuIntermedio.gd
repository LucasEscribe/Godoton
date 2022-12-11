extends Control

## Atributos Onready
onready var titulo = $Titulo
onready var puntos = $Puntos


## Métodos
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	titulo.text = "Nivel {num} Completo".format({"num": DatosJuego.num_nivel_actual})
	puntos.text = "{puntos}\nPunto Totales".format({"puntos": DatosJuego.generar_puntaje()})


## Señales Internas
func _on_BotonNivel_pressed() -> void:
	get_tree().change_scene(DatosJuego.nivel_proximo)
