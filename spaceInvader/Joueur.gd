class_name Joueur extends Area2D

var SPEED : int = 600
var animatedSprite : AnimatedSprite
var collisionShape : CollisionShape2D
var screenSize : Vector2
var velocity : Vector2

func _ready():
	screenSize = get_viewport_rect().size;
	animatedSprite = get_node("AnimatedSprite")
	collisionShape = get_node("CollisionShape2D")

	
func _process(delta):
	velocity = Vector2()
	if(Input.is_action_pressed("ui_left") && position.x >=100): velocity.x-=1
	if(Input.is_action_pressed("ui_right") && position.x <=screenSize.x-100): velocity.x+=1
	if(velocity.length() != 0): velocity = velocity.normalized()*SPEED
	position+=velocity*delta
