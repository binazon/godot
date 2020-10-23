class_name Missil extends Node2D

export var SPEED : int = 900
var animatedSprite : AnimatedSprite
var collisionShape : CollisionShape2D
var velocity : Vector2
var screenSize : Vector2

func _ready():
	screenSize = get_viewport_rect().size;
	animatedSprite = get_node("AnimatedSprite")
	collisionShape = get_node("CollisionShape2D")
	position = Vector2(0, -30)


func _process(delta):
	velocity = Vector2()
	if(position.y <= -screenSize.y): queue_free()
	velocity.y+=1
	if(velocity.length() != 0): velocity = velocity.normalized()*SPEED
	position-=velocity*delta
