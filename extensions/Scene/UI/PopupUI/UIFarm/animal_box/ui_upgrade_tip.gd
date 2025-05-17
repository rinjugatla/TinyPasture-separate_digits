extends "res://Scene/UI/PopupUI/UIFarm/animal_box/ui_upgrade_tip.gd"
const DigitsUtility = preload("res://mods-unpacked/rin_jugatla-separate_digits/digits_utility.gd")

func setup(save):
	super(save)
	
	txt_cost.text = DigitsUtility.format_number_text_with_commas(txt_cost.text)
