extends Node

func cambiar_escena(nombre : Escenas):
	if DiccionarioDeEscenas.has(nombre):
		get_tree().change_scene_to_file(DiccionarioDeEscenas[nombre] as String)
	else:
		print("[EscenasManager]: La escena %s no fue encontrada en el diccionario de escenas. Checa el script EscenasManager.gd" % nombre)

enum Escenas {
	Menu_Principal
}

const DiccionarioDeEscenas : Dictionary[Escenas, String] = {
	Escenas.Menu_Principal: "res://Escenas/Menus/MenuPrincipal.tscn"
}
