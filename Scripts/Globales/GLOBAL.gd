extends Node

# AUDIO
const REPRODUCIR_MUSICA_POR_DEFECTO : bool = true
var MUSICA_POR_DEFECTO : AudioStream = load("res://Assets/Sonidos/Musica/background_music.mp3")

# PROGRESO
var datos_progreso : Dictionary = {
	"velocidad_bob" : "x1",
	"niveles_desbloqueados" : 1,
	"puntuacion_total" : 0,
	"puntuacion_niveles" : {
		1 : 270
	},
}
