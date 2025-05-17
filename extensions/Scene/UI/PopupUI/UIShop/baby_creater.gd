extends "res://Scene/UI/PopupUI/UIShop/baby_creater.gd"
const DigitsUtility = preload("res://mods-unpacked/rin_jugatla-separate_digits/digits_utility.gd")

func refresh():
	super()
	
	txt_price.text = DigitsUtility.format_number_text_with_commas(txt_price.text)
