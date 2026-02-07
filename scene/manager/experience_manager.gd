extends Node

class_name ExperienceManager

signal level_up(current_level)
signal experience_update(current_experience:float, target_experience: float)

var current_experience = 0
var target_experience = 5
var target_after_lvup = 5
var current_level = 1

func _ready() -> void:
	Global.experince_bottle_collected.connect(on_experince_bottle_collected)

func on_experince_bottle_collected(experience):
	current_experience = min(current_experience + experience, target_experience)
	experience_update.emit(current_experience, target_experience)
	
	if current_experience == target_experience:
		current_level += 1
		current_experience = 0
		target_experience += target_after_lvup
		experience_update.emit(current_experience, target_experience)
		level_up.emit(current_level)
