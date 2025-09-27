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
		1 : 0,
		2 : 0,
		3 : 0,
		4 : 0,
		5 : 0,
		6 : 0,
		7 : 0,
		8 : 0,
		9 : 0,
		10 : 0,
		11 : 0,
		13 : 0,
		14 : 0,
		15 : 0,
		16 : 0,
		17 : 0,
		18 : 0,
		19 : 0,
		20 : 0,
	},
}
