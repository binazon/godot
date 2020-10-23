extends Node2D

var SPEED = 1
var movementRight = true
var movementDown = false
var distanceMade = 0
var maxDistance = 512

func _init():
	pass

func _ready():
	var ennemis = get_tree().get_nodes_in_group("Ennemi")
	
	for ennemi in ennemis:
		if(ennemi.isAlive()):
			distanceMade = ennemi.position.x

func _process(delta):
	if (movementDown):
		position.y += SPEED
		movementDown = false
	elif (movementRight):
		position.x += SPEED
		distanceMade += SPEED
	else:
		position.x -= SPEED
		distanceMade += SPEED
	
	if(distanceMade >= maxDistance):
		movementDown = true
		distanceMade = 0
		maxDistance = 1024
		movementRight = !movementRight
		
