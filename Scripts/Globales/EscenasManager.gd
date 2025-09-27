extends Node

func cambiar_escena(nombre : Escenas):
	if DiccionarioDeEscenas.has(nombre):
		get_tree().change_scene_to_file(DiccionarioDeEscenas[nombre] as String)
	else:
		print("[EscenasManager]: La escena %s no fue encontrada en el diccionario de escenas. Checa el script EscenasManager.gd" % nombre)

func cargar_nivel(numero : int):
	if DiccionarioDeNiveles.has(numero):
		get_tree().change_scene_to_file(DiccionarioDeNiveles[numero] as String)
	else:
		print("[EscenasManager]: El nivel %s no fue encontrado en el diccionario de niveles. Checa el script EscenasManager.gd" % str(numero))

enum Escenas {
	Menu_Principal,
	Menu_Niveles
}

const DiccionarioDeEscenas : Dictionary[Escenas, String] = {
	Escenas.Menu_Principal: "res://Escenas/Menus/MenuPrincipal.tscn",
	Escenas.Menu_Niveles : "res://Escenas/Menus/MenuNiveles.tscn"
}

const DiccionarioDeNiveles : Dictionary[int, String] = {
	
}
