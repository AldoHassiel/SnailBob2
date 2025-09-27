extends AnimatedSprite2D

@export_category("Configuración")
@export var direccion : Direccion = Direccion.Delante:
	set(value):
		direccion = value
		flip_h = direccion == Direccion.Atras

@export var velocidad : float = 5
@export var radio : float = 5.0

var angulo : float = 0.0
var centro : Vector2

enum Direccion {
	Delante = 1,
	Atras = -1
}

func _ready() -> void:
	centro = global_position
	
func _process(delta: float) -> void:
	angulo += direccion * velocidad * delta
	global_position = centro + Vector2(cos(angulo), sin(angulo)) * radio
