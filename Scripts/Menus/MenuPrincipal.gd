extends Control

func _on_boton_jugar_pressed() -> void:
	EscenasManager.cambiar_escena(EscenasManager.Escenas.Menu_Niveles)

func _on_boton_creditos_pressed() -> void:
	pass
