extends "res://Scene/UI/PopupUI/UIFarm/ui_farm.gd"
const DigitsUtility = preload("res://mods-unpacked/rin_jugatla-separate_digits/digits_utility.gd")

func _on_bt_new_depot_pressed() -> void :
	super()
	
	txt_depot_buy_cost.text = DigitsUtility.format_number_text_with_commas(txt_depot_buy_cost.text)
