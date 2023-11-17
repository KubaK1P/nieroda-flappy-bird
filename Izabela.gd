extends CharacterBody2D

var speed = 1333 
var v = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.y < 0:
		get_tree().change_scene_to_file("res://gameOver.tscn")
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta
	if Input.is_action_pressed("ui_up"):
		v = -200
	v += delta * 150
	position.y += delta * v
