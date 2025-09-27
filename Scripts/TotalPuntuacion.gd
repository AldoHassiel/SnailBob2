extends CenterContainer

@export var textura_digitos: Texture2D

const ANCHO_DIGITO : int = 24
const ALTO_DIGITO : int = 32
const MAX_DIGITOS : int = 4

@onready var digito1: TextureRect = $ContenedorHorizontal/Digito1
@onready var digito2: TextureRect = $ContenedorHorizontal/Digito2
@onready var digito3: TextureRect = $ContenedorHorizontal/Digito3
@onready var digito4: TextureRect = $ContenedorHorizontal/Digito4

var digitos = []

func _ready() -> void:
	digitos = [digito1, digito2, digito3, digito4]
	actualizar_puntuacion()

func crear_atlas(digito: int) -> AtlasTexture:
	var atlas := AtlasTexture.new()
	atlas.atlas = textura_digitos
	atlas.region = Rect2(0, digito * ALTO_DIGITO, ANCHO_DIGITO, ALTO_DIGITO)
	return atlas

func actualizar_puntuacion() -> void:
	var puntuacion: int = GLOBAL.datos_progreso["puntuacion_total"]
	var texto_puntos := str(puntuacion)
	var num_digitos := texto_puntos.length()
	
	for d in digitos:
		d.visible = false
	
	for i in range(num_digitos):
		var valor = int(texto_puntos[i])
		digitos[MAX_DIGITOS - num_digitos + i].texture = crear_atlas(valor)
		digitos[MAX_DIGITOS - num_digitos + i].visible = true
