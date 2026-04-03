extends CanvasLayer

var coins = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$c.text = str(coins)

func  _physics_process(delta: float):
	if coins == 50:
		get_tree().change_scene_to_file("res://scenes/Game.tscn")

func _on_coin_collected():
	coins+=1
	_ready()
