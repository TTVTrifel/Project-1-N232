extends RigidBody2D

var tracking = false
var startPos = Vector2()
var reset = false
var start = transform
var startTimer = false
var timer = 0


func _ready():
	transform = start

func _input(evt):
	if( evt is InputEventMouseButton and evt.button_index == MOUSE_BUTTON_LEFT):
		if(startTimer == false):
			if(evt.is_pressed()):
				tracking = true
				startPos = evt.position
			else:
				tracking = false
				var kickDir = startPos - evt.position
				gravity_scale = 1
				apply_force(kickDir * 300)
				startTimer = true
			
func _process(delta):
	if(startTimer == true):
		timer = timer + 1 * delta
	if(linear_velocity <= Vector2(10,10)):
		if(timer > 10):
			reset = true
			

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if(reset == true):
		linear_velocity = Vector2(0,0)
		transform = start
		reset = false
		timer = 0
		startTimer = false



