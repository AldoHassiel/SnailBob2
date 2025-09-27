extends TextureButton
class_name Boton_Nivel

@export_category("Configuración")
@export var numero_nivel : int = 1

@export_category("Referencias")
@export var numeros_textura : Texture2D

@onready var puntuacion_nodo = $Puntuacion
@onready var digito1 = $ContenedorCentrador/ContenedorHorizontal/Digito1
@onready var digito2 = $ContenedorCentrador/ContenedorHorizontal/Digito2
@onready var contenedor = $ContenedorCentrador

const ANCHO_DIGITO : int = 30
const ALTO_DIGITO : int = 32

func _ready() -> void:
	if disabled:
		puntuacion_nodo.visible = false
		contenedor.visible = false
	
	if not disabled:
		mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	
	actualizar_numero()

func crear_atlas(digito: int):
	var atlas = AtlasTexture.new()
	atlas.atlas = numeros_textura
	atlas.region = Rect2(0, digito * ALTO_DIGITO, ANCHO_DIGITO, ALTO_DIGITO)
	return atlas

func actualizar_numero():
	if not disabled:
		puntuacion_nodo.visible = true
		contenedor.visible = true
		mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	
	@warning_ignore("integer_division")
	var decena = numero_nivel / 10
	var unidades = numero_nivel % 10
	
	if numero_nivel < 10:
		digito1.visible = false
		digito2.texture = crear_atlas(unidades)
	else:
		digito1.texture = crear_atlas(decena)
		digito2.texture = crear_atlas(unidades)
	
	cargar_puntuacion()

func _on_pressed() -> void:
	EscenasManager.cargar_nivel(numero_nivel)

func cargar_puntuacion():
	if GLOBAL.datos_progreso["puntuacion_niveles"].has(numero_nivel):
		var puntuacion = str(GLOBAL.datos_progreso["puntuacion_niveles"][numero_nivel])
		puntuacion_nodo.text = "[font_size=12][b]" + puntuacion + "[/b][/font_size]"
	else:
		puntuacion_nodo.text = ""
