extends Area2D

@onready var game_managar: Node = %GameManagar
signal coin_collected


func _on_body_entered(body: Node2D) -> void:
	$AnimationPlayer.play("bounce")
	emit_signal("coin_collected")
	set_collision_mask_value(2 ,false)
	
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	game_managar.add_point()
	queue_free()
