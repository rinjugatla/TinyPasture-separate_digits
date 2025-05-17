extends "res://Scene/UI/PopupUI/UIShop/ui_shop_opened_pack.gd"
const DigitsUtility = preload("res://mods-unpacked/rin_jugatla-separate_digits/digits_utility.gd")

func refresh_result_page():
	super()
	
	txt_money.text = DigitsUtility.format_number_text_with_commas(txt_money.text)
