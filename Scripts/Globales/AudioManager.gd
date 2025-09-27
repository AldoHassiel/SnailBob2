extends Node

var hay_musica_reproduciendose : bool = GLOBAL.REPRODUCIR_MUSICA_POR_DEFECTO

var reproductor_musica: AudioStreamPlayer
var reproductor_sonido : AudioStreamPlayer

var volumen_musica := 0.8
var volumen_sonido := 1.0

func _ready() -> void:
	reproductor_musica = AudioStreamPlayer.new()
	reproductor_musica.bus = "Musica"
	add_child(reproductor_musica)
	
	reproductor_sonido = AudioStreamPlayer.new()
	reproductor_sonido.bus = "Sonido"
	add_child(reproductor_sonido)
	
	if GLOBAL.REPRODUCIR_MUSICA_POR_DEFECTO:
		reproducir_musica(GLOBAL.MUSICA_POR_DEFECTO)

# Metodos para la musica
func reproducir_musica(pista : AudioStream):
	if reproductor_musica.stream == pista:
		return
	
	reproductor_musica.stream = pista
	reproductor_musica.volume_db = linear_to_db(volumen_musica)
	reproductor_musica.play()
	
	hay_musica_reproduciendose = true

func detener_musica():
	reproductor_musica.stop()
	reproductor_musica.stream = null
	
	hay_musica_reproduciendose = false

func establecer_volumen_musica(valor : float):
	volumen_musica = clamp(valor, 0.0, 1.0)
	reproductor_musica.volume_db = linear_to_db(volumen_musica)

# Metodo para los efectos de sonido
func reproducir_sonido(efecto : AudioStream):
	reproductor_sonido.stream = efecto
	reproductor_sonido.volume_db = linear_to_db(volumen_sonido)
	reproductor_sonido.play()

func detener_sonido():
	reproductor_sonido.stop()
	reproductor_sonido.stream = null

func establecer_volumen_sonido(valor: float):
	volumen_sonido = clamp(valor, 0.0, 1.1)
	reproductor_sonido.volume_db = linear_to_db(volumen_sonido)

func detener_todo():
	reproductor_musica.stop()
	reproductor_sonido.stop()
