extends PanelContainer

class_name AbilityUpgradeCard

@onready var name_label = $VBoxContainer/NameLabel
@onready var description_label = $VBoxContainer/DescriptionLabel




func set_ability_upgrade (upgrade: AbilityUpgrade):
	name_label.text = upgrade.name
	description_label.text = upgrade.description
