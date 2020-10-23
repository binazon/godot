extends RigidBody2D

signal hit
export(bool) var alive = true setget , isAlive

func _ready():
	pass # Replace with function body.

func isAlive():
	return alive
