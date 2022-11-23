class_name Godoton
extends KinematicBody


## Atributos Export
export var velocidad_max: Vector2 = Vector2(10.0, 60.0)
export var gravedad: float = 9.8
export var impulso: float = 50.0
export var fuerza_salto: float = 21.0

## Atributos Onready
onready var brazo_camara: SpringArm = $BrazoCamara

## Atributos Constantes
const direccion_arriba: Vector3 = Vector3.UP

## Atributos Variables
var movimiento: Vector3 = Vector3.ZERO
var saltando: bool
var saltando_interrumpido: bool


## Métodos
func _process(delta: float) -> void:
	brazo_camara.translation = translation
	#move_and_slide(movimiento, direccion_arriba)
	

func _physics_process(delta: float) -> void:
	movimiento_vertical()
	movimiento = move_and_slide(movimiento, direccion_arriba)

	
func movimiento_vertical() -> void:
	if not is_on_floor():
		movimiento.y = clamp(movimiento.y, -velocidad_max.y, impulso)
		movimiento.y -= gravedad
		if Input.is_action_just_released("saltar"):
			saltando_interrumpido = true
		else:
			saltando = false
		
		var inicio_salto: bool = is_on_floor() and Input.is_action_just_pressed("saltar")
		if inicio_salto:
			saltando = true
			saltando_interrumpido = false
		
		if movimiento.y > velocidad_max.y:
			saltando_interrumpido = true

		if Input.is_action_pressed("saltar") and saltando and not saltando_interrumpido:
			movimiento.y += fuerza_salto
		
