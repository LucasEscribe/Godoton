extends Button

## Atributos Export
export(NodePath) var nodo_sfx
var boton_sfx: AudioStreamPlayer


## Métodos
func _ready() -> void:
	connect("pressed", self, "presionado")
	boton_sfx = get_node(nodo_sfx)

## Métodos Custom
func presionado() -> void:
	boton_sfx.play()
