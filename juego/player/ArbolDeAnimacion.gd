class_name ArbolAnimacionPlayer
extends AnimationTree


## Setter y Getter
func get_valor_mezcla_idle_caminar() -> float:
	return get("parameteres/MezclaIdleCaminar/blend_amount")

func set_valor_mezcla_idle_caminar(valor: float) -> void:
	set("parameteres/MezclaIdleCaminar/blend_amount", valor)

func get_transicion_suelo_aire() -> int:
	return get("parameters/TransicionSueloAire/current")
	
func set_transicion_suelo_aire(valor: int) -> void:
	set("parameters/TransicionSueloAire/current", valor)

func get_mezcla_saltar_caer() -> float:
	return get("parameteres/MezclaSaltarCaer/blend_amount")

func set_mezcla_saltar_caer(valor: float) -> void:
	set("parameters/MezclaSaltarCaer/current", valor)

func get_mezcla_disparar() -> float:
	return get("parameteres/MezclaDisparar/blend_amount")

func set_mezcla_disparar(valor: float) -> void:
	set("parameters/MezclaDisparar/current", valor)
