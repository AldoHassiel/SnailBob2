extends TextureButton

func _ready() -> void:
	if AudioManager.hay_musica_reproduciendose:
		button_pressed = false
	else:
		button_pressed = true

func _on_toggled(toggled_on: bool) -> void:
	if !toggled_on:
		AudioManager.reproducir_musica(GLOBAL.MUSICA_POR_DEFECTO)
	else:
		AudioManager.detener_musica()
