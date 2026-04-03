extends Node2D

var speed = 60

var direction = 1
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h=false
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h=true
	position.x += direction * speed * delta
	


#func _on_killzone_body_entered(body: Node2D) -> void:
	#if "player" in body.name:
		#health -=1

func _on_animated_sprite_2d_animation_finished() -> void:
	if animated_sprite.animation == "squashed":
		queue_free()
