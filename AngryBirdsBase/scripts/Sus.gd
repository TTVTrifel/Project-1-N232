extends RigidBody2D

#TODO: You'll probably need an export_var for the particle effect here


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


#TODO:
#this will only work if you set the rigidbody to "contact monitoring"
#and set max contacts to higher than 0
	
	#create a particle effect at this object's location
	#find the game UI script and send it a message that the score has increased
	#and then destroy this object using queue_free





func _on_body_entered(body):
	if(body.is_in_group("Player")):
		print("hi")
		GameManager.score = GameManager.score + 1
		
