extends Area2D

# Movement UP to DOWN
var speed = 100
var sensor = 0

func _process(delta):
	
	# Move
	position.y += speed * delta
	
	# Screen exited
	if position.y > 540:
		queue_free()
		print("RIP")
	
	# Sensor and pressed
	if sensor == 1:
		# Add "Global" > new
		if Global.sensor_AU == 1:
			if Input.is_action_just_pressed("ui_up"):
				queue_free()

func _on_Move_ArrowUp_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 1

func _on_Move_ArrowUp_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 0
