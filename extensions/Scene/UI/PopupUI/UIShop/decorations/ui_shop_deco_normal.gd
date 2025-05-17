extends "res://Scene/UI/PopupUI/UIShop/decorations/ui_shop_deco_normal.gd"
const DigitsUtility = preload("res://mods-unpacked/rin_jugatla-separate_digits/digits_utility.gd")

func _ready() -> void :
	super()
	
	txt_price.text = DigitsUtility.format_number_text_with_commas(txt_price.text)
