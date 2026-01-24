extends Node

var current_experience = 0

func _ready() -> void:
	Global.experince_bottle_collected.connect(on_experince_bottle_collected)

func on_experince_bottle_collected(experience):
	current_experience += experience
	print(current_experience)
