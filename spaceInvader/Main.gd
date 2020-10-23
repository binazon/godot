extends Node2D

var missilScene : PackedScene

func _ready():
		missilScene = load("Missil.tscn")

func _process(delta):
	if(Input.is_action_just_pressed("ui_accept")):
		var missil : Missil = missilScene.instance()
		#mettre le missil à possition courante du joueur 
		add_child(missil)
