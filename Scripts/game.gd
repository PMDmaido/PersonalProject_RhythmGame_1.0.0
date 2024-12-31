extends Node2D

const AL = preload("res://Scenes/move_arrow_left.tscn")
const AD = preload("res://Scenes/move_arrow_down.tscn")
const AU = preload("res://Scenes/move_arrow_up.tscn")
const AR = preload("res://Scenes/move_arrow_right.tscn")

var random = 0
var RNG = RandomNumberGenerator.new()

func _process(delta):
	$Score/Label.text = str(Global.score)
	pass

func _on_timer_timeout() -> void:
	$Timer.start()
	RNG.randomize()
	var random_int = RNG.randi_range(1, 4) # or 0,4
	random = random_int

# Random 1 - 4
	if random == 1:
		var al = AL.instantiate()
		get_parent().add_child(al)
		al.position = $Create/Marker2D_AL.global_position

	if random == 2:
		var ad = AD.instantiate()
		get_parent().add_child(ad)
		ad.position = $Create/Marker2D_AD.global_position

	if random == 3:
		var au = AU.instantiate()
		get_parent().add_child(au)
		au.position = $Create/Marker2D_AU.global_position

	if random == 4:
		var ar = AR.instantiate()
		get_parent().add_child(ar)
		ar.position = $Create/Marker2D_AR.global_position
