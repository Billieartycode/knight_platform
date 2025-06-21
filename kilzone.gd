extends Area2D

@onready var timer: Timer = $Timer



func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale=0.5 #to add more dinamics into dying
	body.get_node("CollisionShape2D").queue_free()#player will fall of if dying (collusion removed)
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale=1
	get_tree().reload_current_scene()
