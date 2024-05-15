extends Node2D

var fruit :PackedScene= preload("res://scenes/fruit.tscn")


func _on_timer_done():
	var new_fruit:Node = fruit.instantiate()
	#only Node2D's/CharacterBody2D's have positions
	#we convert it so we can move it
	var fruit2d:CharacterBody2D = new_fruit as CharacterBody2D
	
	#move it to a random x position
	var window_width:int = get_window().size.x
	#use global postion bc it's relative to the top left(0,0) instead of where it spawned
	fruit2d.position.x=randf()*window_width
	
	#put it in the scene so it can be seen and simulated
	add_child(fruit2d)
	print_debug("timer done")
