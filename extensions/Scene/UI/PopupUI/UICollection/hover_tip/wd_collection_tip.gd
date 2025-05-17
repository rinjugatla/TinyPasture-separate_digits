extends "res://Scene/UI/PopupUI/UICollection/hover_tip/wd_collection_tip.gd"
const DigitsUtility = preload("res://mods-unpacked/rin_jugatla-separate_digits/digits_utility.gd")

func setup(adult_count, rare_rank, pos_value):
	super(adult_count, rare_rank, pos_value)
	
	% TXT_AdultCount.text = DigitsUtility.format_int_with_commas(adult_count)
