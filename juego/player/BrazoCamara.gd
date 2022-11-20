extends SpringArm


## Atributos Exports
export var velocidad_mov_camara: float = 0.10
export var rango_rotacion_camara_x: Vector2= Vector2(-90.0, 30.0)
export var rango_rotacion_camara_y: Vector2= Vector2(00.0, 360.0) 



## Métodos
func _ready() -> void:
	set_as_toplevel(true)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		# Movimiento alrededor del eje X (arriba/abajo)
		rotation_degrees.x += event.relative.y * velocidad_mov_camara
		rotation_degrees.x = clamp(
			rotation_degrees.x,
			rango_rotacion_camara_x.x,
			rango_rotacion_camara_x.y			
		)

		# Movimiento alrededor del eje Y (derecha/izquierda)
		rotation_degrees.y += event.relative.x * velocidad_mov_camara
		rotation_degrees.x = wrapf(
			rotation_degrees.y,
			rango_rotacion_camara_y.x,
			rango_rotacion_camara_y.y			
		)
		
	#TODO: Sólo para Debug
	if Input.is_action_just_released("ui_cancel"):
		get_tree().quit
