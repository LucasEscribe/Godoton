class_name Godoton
extends KinematicBody


## Atributos Export
export var velocidad_max: Vector2 = Vector2(10.0, 60.0)
export var gravedad: float = 9.8
export var impulso: float = 50.0

## Atributos Onready
onready var brazo_camara: SpringArm = $BrazoCamara

## Atributos
const direccion_arriba: Vector3 = Vector3.UP
var movimiento: Vector3 = Vector3.ZERO


## Métodos
func _process(delta: float) -> void:
	brazo_camara.translation = translation

func _physics_process(delta: float) -> void:
	movimiento_vertical()
	move_and_slide(movimiento, direccion_arriba)
	if Input.is_action_pressed("saltar") and saltando and not saltando_interrumpido:
		movimiento.y += fuerza_salto

func movimiento_vertical() -> void:
	if not is_on_floor():
		movimiento.y -= gravedad
		movimiento.y = clamp(movimiento.y, -velocidad_max.y, impulso)
