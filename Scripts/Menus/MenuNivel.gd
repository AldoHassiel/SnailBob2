extends Control

var botones_nvieles : Dictionary[int, Boton_Nivel] = {}

func _ready() -> void:
	botones_nvieles[1] = $Niveles/BotonNivel
	botones_nvieles[2] = $Niveles/BotonNivel2
	botones_nvieles[3] = $Niveles/BotonNivel3
	botones_nvieles[4] = $Niveles/BotonNivel4
	botones_nvieles[5] = $Niveles/BotonNivel5
	botones_nvieles[6] = $Niveles/BotonNivel6
	botones_nvieles[7] = $Niveles/BotonNivel7
	botones_nvieles[8] = $Niveles/BotonNivel8
	botones_nvieles[9] = $Niveles/BotonNivel9
	botones_nvieles[10] = $Niveles/BotonNivel10
	botones_nvieles[11] = $Niveles/BotonNivel11
	botones_nvieles[12] = $Niveles/BotonNivel12
	botones_nvieles[13] = $Niveles/BotonNivel13
	botones_nvieles[14] = $Niveles/BotonNivel14
	botones_nvieles[15] = $Niveles/BotonNivel15
	botones_nvieles[16] = $Niveles/BotonNivel16
	botones_nvieles[17] = $Niveles/BotonNivel17
	botones_nvieles[18] = $Niveles/BotonNivel18
	botones_nvieles[19] = $Niveles/BotonNivel19
	botones_nvieles[20] = $Niveles/BotonNivel20
	
	activar_o_desactivar_niveles()

func activar_o_desactivar_niveles():
	for nivel in botones_nvieles.keys():
		var boton = botones_nvieles[nivel]
		
		if nivel <= GLOBAL.datos_progreso["niveles_desbloqueados"]:
			boton.disabled = false
		else:
			boton.disabled = true
		
		boton.actualizar_numero()

func _on_boton_menu_pressed() -> void:
	EscenasManager.cambiar_escena(EscenasManager.Escenas.Menu_Principal)
